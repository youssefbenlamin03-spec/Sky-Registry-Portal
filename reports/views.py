from django.shortcuts import render
from organisation.models import Team

def reports_overview(request):
    number_of_teams = Team.objects.count()

    data = {
        'number_of_teams': number_of_teams
    }

    return render(request, 'reports/reports_overview.html', {
        'number_of_teams': number_of_teams
    })