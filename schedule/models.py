from django.db import models


class ScheduleMeeting(models.Model):
    scheduleEventID = models.IntegerField(primary_key=True, db_column='scheduleEventID')
    scheduleEventTitle = models.TextField(db_column='scheduleEventTitle', null=True, blank=True)
    scheduleEventDate = models.TextField(db_column='scheduleEventDate', null=True, blank=True)
    scheduleEventTime = models.TextField(db_column='scheduleEventTime', null=True, blank=True)
    scheduleEventDescription = models.TextField(db_column='scheduleEventDescription', null=True, blank=True)
    scheduleEventPlatform = models.TextField(db_column='scheduleEventPlatform', null=True, blank=True)

    class Meta:
        db_table = 'Schedule_Event'

    def __str__(self):
        return self.scheduleEventTitle or f"Schedule {self.scheduleEventID}"