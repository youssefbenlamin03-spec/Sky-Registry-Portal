from django.db import models

class Message(models.Model):
    messageID = models.IntegerField(primary_key=True, db_column='messageID')
    messageTitle = models.TextField(db_column='messageTitle', null=True, blank=True)
    messageType = models.TextField(db_column='messageType', null=True, blank=True)
    messageContent = models.TextField(db_column='messageContent', null=True, blank=True)
    teamID = models.IntegerField(db_column='teamID', null=True, blank=True)
    userID = models.IntegerField(db_column='userID', null=True, blank=True)

    class Meta:
        db_table = 'Message'