from django.db import models

# Create your models here.

class Department(models.Model):
    departmentName = models.TextField()
    departmentHead = models.TextField(blank=True, null=True)
    specialisation  = models.TextField(blank=True, null=True)

    def __str__(self):
        return self.departmentName


class Team(models.Model):
    teamName                   = models.TextField()
    developmentFocusArea       = models.TextField(blank=True, null=True)
    keySkillsAndTechnologies   = models.TextField(blank=True, null=True)
    agilePractices             = models.TextField(blank=True, null=True)
    numberOfConcurrentProjects = models.TextField(blank=True, null=True)
    department                 = models.ForeignKey(
                                     Department,
                                     on_delete=models.SET_NULL,
                                     null=True, blank=True,
                                     related_name='teams')

    def __str__(self):
        return self.teamName


class TeamDependency(models.Model):
    sourceTeam     = models.ForeignKey(Team, on_delete=models.CASCADE,
                                       related_name='outgoing_dependencies')
    targetTeam     = models.ForeignKey(Team, on_delete=models.CASCADE,
                                       related_name='incoming_dependencies')
    dependencyType = models.TextField(blank=True, null=True)

    class Meta:
        unique_together = ('sourceTeam', 'targetTeam')

    def __str__(self):
        return f"{self.sourceTeam} → {self.targetTeam}"


