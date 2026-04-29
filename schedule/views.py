from django.shortcuts import render, redirect, get_object_or_404
from django.utils import timezone
from django.contrib import messages
from datetime import timedelta, datetime
from .models import ScheduleMeeting


def schedule_page(request):
    today = timezone.localdate()
    view = request.GET.get('view', 'upcoming')

    meetings = ScheduleMeeting.objects.all().order_by('scheduleEventDate', 'scheduleEventTime')

    upcoming = meetings
    weekly = meetings
    monthly = meetings

    return render(request, 'schedule/schedule.html', {
        'upcoming': upcoming,
        'weekly': weekly,
        'monthly': monthly,
        'view': view,
        'today': today
    })


def add_meeting(request):
    if request.method == 'POST':
        title = request.POST.get('title')
        date = request.POST.get('date')
        time = request.POST.get('time')
        platform = request.POST.get('platform')
        message = request.POST.get('message')

        if not title or not date or not time or not platform:
            messages.error(request, "Please complete all required fields.")
            return redirect('schedule')

        meeting_datetime = datetime.strptime(
            f"{date} {time}",
            "%Y-%m-%d %H:%M"
        )

        meeting_datetime = timezone.make_aware(
            meeting_datetime,
            timezone.get_current_timezone()
        )

        if meeting_datetime <= timezone.now():
            messages.error(request, "You cannot schedule a meeting in the past.")
            return redirect('schedule')

        last_meeting = ScheduleMeeting.objects.order_by('-scheduleEventID').first()
        next_id = 1 if last_meeting is None else last_meeting.scheduleEventID + 1

        ScheduleMeeting.objects.create(
            scheduleEventID=next_id,
            scheduleEventTitle=title,
            scheduleEventDate=date,
            scheduleEventTime=time,
            scheduleEventDescription=message,
            scheduleEventPlatform=platform
        )

        messages.success(request, "Meeting scheduled successfully.")

    return redirect('schedule')


def delete_meeting(request, id):
    if request.method == 'POST':
        meeting = get_object_or_404(ScheduleMeeting, scheduleEventID=id)
        meeting.delete()
        messages.success(request, "Meeting deleted successfully.")
    return redirect('schedule')