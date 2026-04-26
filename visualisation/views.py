from django.shortcuts import render
from django.contrib.auth.decorators import login_required
from organisation.models import Department, Team
import json

@login_required
def dashboard(request):
    # Equipos por departamento
    departments = Department.objects.all()
    dept_names = [d.departmentName for d in departments]
    dept_team_counts = [Team.objects.filter(department=d).count() for d in departments]

    # Equipos sin departamento
    teams_no_dept = Team.objects.filter(department__isnull=True).count()

    # Total stats
    total_teams = Team.objects.count()
    total_departments = Department.objects.count()

    context = {
        'dept_names': json.dumps(dept_names),
        'dept_team_counts': json.dumps(dept_team_counts),
        'total_teams': total_teams,
        'total_departments': total_departments,
        'teams_no_dept': teams_no_dept,
    }
    return render(request, 'visualisation/dashboard.html', context)