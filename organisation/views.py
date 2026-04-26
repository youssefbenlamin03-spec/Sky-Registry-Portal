from django.shortcuts import render, get_object_or_404
from django.contrib.auth.decorators import login_required
from .models import Department, Team, TeamDependency


# This view shows the main organisation overview page
# It gets all departments from the database and passes them to the template
@login_required
def organisation_overview(request):

    # get all departments from the database
    all_departments = Department.objects.all()

    # send the departments to the HTML template
    return render(request, 'organisation/organisation_overview.html', {
        'departments': all_departments
    })


# This view shows the detail page for a single department
# It takes the department ID from the URL and fetches that department
@login_required
def department_detail(request, department_id):

    # get the specific department by its ID, show 404 if not found
    department = get_object_or_404(Department, id=department_id)

    # get all teams that belong to this department
    teams = department.teams.all()

    return render(request, 'organisation/department_detail.html', {
        'department': department,
        'teams': teams
    })

def team_detail(request, team_id):
    team = team.object.get(id=team_id)
    # get teams this team depends on
    dependencies = TeamDependency.objects.filter(sourceTeam=team)
    return render(request, 'organisation/team_detail.html', 
                  {'team': team, 
                   'dependencies': dependencies})    
    