from django.shortcuts import render, redirect
from django.contrib.auth.models import User
from .models import Message

# Shows messages received by the current user
def inbox(request):
    messages = Message.objects.filter(receiver=request.user, is_draft=False)
    return render(request, 'messaging/inbox.html', {'messages': messages})

# Shows messages sent by the current user
def sent(request):
    messages = Message.objects.filter(sender=request.user, is_draft=False)
    return render(request, 'messaging/sent.html', {'messages': messages})

# Shows draft messages saved by the current user
def drafts(request):
    messages = Message.objects.filter(sender=request.user, is_draft=True)
    return render(request, 'messaging/drafts.html', {'messages': messages})

# Lets the user create and send a new message
def new_message(request):
    users = User.objects.all()

    if request.method == 'POST':
        receiver_id = request.POST.get('receiver')
        subject = request.POST.get('subject')
        content = request.POST.get('content')

        receiver = User.objects.get(id=receiver_id)

        Message.objects.create(
            sender=request.user,
            receiver=receiver,
            subject=subject,
            content=content,
            is_draft=False
        )

        return redirect('inbox')

    return render(request, 'messaging/new_message.html', {'users': users})