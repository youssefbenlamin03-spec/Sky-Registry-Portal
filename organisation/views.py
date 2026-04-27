from django.shortcuts import render, get_object_or_404
from django.contrib.auth.decorators import login_required
from .models import Department, Team, TeamDependency, Engineer


@login_required
def organisation_overview(request):
    all_departments = Department.objects.all()
    return render(request, 'organisation/organisation_overview.html', {
        'departments': all_departments
    })


@login_required
def department_detail(request, department_id):
    department = get_object_or_404(Department, departmentID=department_id)
    teams = department.teams.all()
    return render(request, 'organisation/department_detail.html', {
        'department': department,
        'teams': teams
    })


@login_required
def team_detail(request, team_id):
    team = get_object_or_404(Team, teamID=team_id)
    dependencies = TeamDependency.objects.filter(sourceTeam=team)
    return render(request, 'organisation/team_detail.html', {
        'team': team,
        'dependencies': dependencies
    })