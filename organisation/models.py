from django.db import models

class Department(models.Model):
    departmentID   = models.IntegerField(primary_key=True)
    departmentName = models.TextField()
    departmentHead  = models.TextField(blank=True, null=True)
    specialisation  = models.TextField(blank=True, null=True)

    class Meta:
        db_table = 'Department'
        managed = False

    def __str__(self):
        return self.departmentName


class Team(models.Model):
    teamID                     = models.IntegerField(primary_key=True)
    teamName                   = models.TextField()
    developmentFocusArea       = models.TextField(blank=True, null=True)
    jiraBoardLink              = models.TextField(blank=True, null=True)
    keySkillsAndTechnologies   = models.TextField(blank=True, null=True)
    softwareOwnedAndEvolved    = models.TextField(blank=True, null=True)
    versioningApproaches       = models.TextField(blank=True, null=True)
    wikiSearchTerms            = models.TextField(blank=True, null=True)
    dailyStundupTimeAndLink    = models.TextField(blank=True, null=True)
    agilePractices             = models.TextField(blank=True, null=True)
    wikiLink                   = models.TextField(blank=True, null=True)
    numberOfConcurrentProjects = models.TextField(blank=True, null=True)
    slackChannel               = models.TextField(blank=True, null=True) 
    manager                    = models.ForeignKey(  
                                     'Engineer',
                                     on_delete=models.SET_NULL,
                                     null=True, blank=True,
                                     related_name='managed_teams',
                                     db_column='managerID')
    department                 = models.ForeignKey(
                                     Department,
                                     on_delete=models.SET_NULL,
                                     null=True, blank=True,
                                     related_name='teams',
                                     db_column='departmentID')

    class Meta:
        db_table = 'Team'
        managed = False

    def __str__(self):
        return self.teamName

class Engineer(models.Model):
    engineerID       = models.IntegerField(primary_key=True)
    engineerName     = models.TextField(blank=True, null=True)
    engineerEmail    = models.TextField(blank=True, null=True)
    engineerExpertise = models.TextField(blank=True, null=True)
    team             = models.ForeignKey(
                           Team,
                           on_delete=models.SET_NULL,
                           null=True, blank=True,
                           related_name='engineers',
                           db_column='teamID')
    department       = models.ForeignKey(
                           Department,
                           on_delete=models.SET_NULL,
                           null=True, blank=True,
                           db_column='departmentID')

    class Meta:
        db_table = 'Engineer'
        managed = False

    def __str__(self):
        return self.engineerName

class TeamDependency(models.Model):
    sourceTeam     = models.ForeignKey(Team, on_delete=models.CASCADE,
                                       related_name='outgoing_dependencies',
                                       db_column='sourceTeamID')
    targetTeam     = models.ForeignKey(Team, on_delete=models.CASCADE,
                                       related_name='incoming_dependencies',
                                       db_column='targetTeamID')
    dependencyType = models.TextField(blank=True, null=True)

    class Meta:
        db_table = 'TeamDependency'
        unique_together = ('sourceTeam', 'targetTeam')

    def __str__(self):
        return f"{self.sourceTeam} → {self.targetTeam}"