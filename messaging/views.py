from django.shortcuts import render, redirect
from django.contrib.auth.models import User
from .models import Message


# View to display all messages in the logged-in user's inbox as a chat thread
def inbox(request):
    # Filter messages from the database where userID matches the logged-in user
    inbox_messages = Message.objects.filter(userID=request.user.id)

    # For each message, look up the sender's username using their userID
    messages_with_users = []
    for m in inbox_messages:
        try:
            # Attempt to get the User object matching the message's userID
            sender = User.objects.get(id=m.userID)
            sender_name = sender.username
        except User.DoesNotExist:
            # If no matching user found, show unknown
            sender_name = "Unknown"

        # Append message data and resolved username as a dictionary
        messages_with_users.append({
            'title': m.messageTitle,
            'content': m.messageContent,
            'type': m.messageType,
            'sender': sender_name,
        })

    # Pass enriched message list to the template
    return render(request, 'messaging/inbox.html', {'inbox_messages': messages_with_users})


# View to display all sent messages for the logged-in user
def sent(request):
    # Retrieve messages sent by the current user
    sent_messages = Message.objects.filter(userID=request.user.id)
    return render(request, 'messaging/sent.html', {'sent_messages': sent_messages})


# View to display drafts - currently returns empty queryset as placeholder
def drafts(request):
    # Return an empty queryset as draft functionality is not yet implemented
    draft_messages = Message.objects.none()
    return render(request, 'messaging/drafts.html', {'draft_messages': draft_messages})


# View to handle composing and sending a new message
def new_message(request):
    # Retrieve all registered users to populate the receiver dropdown
    users = User.objects.all()

    if request.method == 'POST':
        # Extract form data submitted by the user
        receiver_id = request.POST.get('receiver')
        subject = request.POST.get('subject')
        content = request.POST.get('content')

        # Determine the next available message ID manually
        # since messageID is not set to auto-increment
        last_message = Message.objects.order_by('-messageID').first()
        next_id = 1 if last_message is None else last_message.messageID + 1

        # Create and save the new message to the database
        Message.objects.create(
            messageID=next_id,
            messageTitle=subject,
            messageType='inbox',
            messageContent=content,
            teamID=None,
            userID=receiver_id
        )

        # Redirect to inbox after successful message creation
        return redirect('inbox')

    # Render the new message form with the list of users
    return render(request, 'messaging/new_message.html', {'users': users})
