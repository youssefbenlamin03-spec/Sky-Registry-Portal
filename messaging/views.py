from django.shortcuts import render, redirect
from django.contrib.auth.models import User
from .models import Message


def inbox(request):
    messages = Message.objects.filter(userID=request.user.id)
    return render(request, 'messaging/inbox.html', {'messages': messages})


def sent(request):
    messages = Message.objects.filter(userID=request.user.id)
    return render(request, 'messaging/sent.html', {'messages': messages})


def drafts(request):
    messages = Message.objects.none()
    return render(request, 'messaging/drafts.html', {'messages': messages})


def new_message(request):
    users = User.objects.all()

    if request.method == 'POST':
        receiver_id = request.POST.get('receiver')
        subject = request.POST.get('subject')
        content = request.POST.get('content')

        last_message = Message.objects.order_by('-messageID').first()
        next_id = 1 if last_message is None else last_message.messageID + 1

        Message.objects.create(
            messageID=next_id,
            messageTitle=subject,
            messageType='inbox',
            messageContent=content,
            messageTimestamp='2026-04-28',
            teamID=None,
            userID=receiver_id
        )

        return redirect('inbox')

    return render(request, 'messaging/new_message.html', {'users': users})