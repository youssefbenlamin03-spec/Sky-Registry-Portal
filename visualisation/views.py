from django.shortcuts import render
from django.contrib.auth.decorators import login_required
from organisation.models import Department, Team, Engineer
import json

@login_required
def dashboard(request):
    # Departaments and teams
    departments = Department.objects.all()
    dept_names = [d.departmentName for d in departments]
    dept_team_counts = [Team.objects.filter(department=d).count() for d in departments]

    # Engineers per department
    dept_engineer_counts = [Engineer.objects.filter(department=d).count() for d in departments]

    # Engineers per team
    teams = Team.objects.all()
    team_names = [t.teamName for t in teams]
    team_engineer_counts = [Engineer.objects.filter(team=t).count() for t in teams]

    # Total stats
    total_teams = Team.objects.count()
    total_departments = Department.objects.count()
    total_engineers = Engineer.objects.count()
    teams_no_dept = Team.objects.filter(department__isnull=True).count()

    context = {
        'dept_names': json.dumps(dept_names),
        'team_names': json.dumps(team_names),
        'dept_team_counts': json.dumps(dept_team_counts),
        'dept_engineer_counts': json.dumps(dept_engineer_counts),
        'team_engineer_counts': json.dumps(team_engineer_counts),
        'total_teams': total_teams,
        'total_departments': total_departments,
        'total_engineers': total_engineers,
        'teams_no_dept': teams_no_dept,
    }
    return render(request, 'visualisation/visualisation_overview.html', context)