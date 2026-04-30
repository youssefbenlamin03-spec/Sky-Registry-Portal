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
    outgoing = TeamDependency.objects.filter(sourceTeam=team)
    incoming = TeamDependency.objects.filter(targetTeam=team)
    return render(request, 'organisation/team_detail.html', {
        'team': team,
        'outgoing': outgoing,
        'incoming': incoming,
    })
    
@login_required
def org_chart(request):
    # get all departments with all their teams and dependency info
    departments = Department.objects.prefetch_related(
        'teams__outgoing_dependencies__targetTeam',
        'teams__incoming_dependencies__sourceTeam',
    ).all()

    return render(request, 'organisation/org_chart.html', {
        'departments': departments,
    })

def teams_page(request):
    query = request.GET.get("q")
    teams = Team.objects.all()

    if query:
        teams = teams.filter(teamName__icontains=query)

    return render(request, "organisation/teams.html", {
        "teams": teams,
        "query": query
    })