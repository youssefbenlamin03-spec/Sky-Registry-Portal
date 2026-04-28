from django.shortcuts import render
from organisation.models import Team, Department, Engineer
from django.http import HttpResponse, FileResponse
from django.template.loader import render_to_string
from weasyprint import HTML
import csv
import io


def reports_overview(request):
    number_of_teams = Team.objects.count()
    number_of_departments = Department.objects.count()
    number_of_engineers = Engineer.objects.count()
    teams_without_managers = Team.objects.filter(manager__isnull=True)

    context = {
        'number_of_teams': number_of_teams,
        'number_of_departments': number_of_departments,
        'number_of_engineers': number_of_engineers,
        'teams_without_managers': teams_without_managers,
    }

    return render(request, 'reports/reports_overview.html', context)


def export_reports_excel(request):
    teams_without_managers = Team.objects.filter(manager__isnull=True)

    response = HttpResponse(content_type='text/csv')
    response['Content-Disposition'] = 'attachment; filename="reports.csv"'

    writer = csv.writer(response)
    writer.writerow(['Report Item', 'Value'])
    writer.writerow(['Number of teams', Team.objects.count()])
    writer.writerow(['Number of departments', Department.objects.count()])
    writer.writerow(['Number of engineers', Engineer.objects.count()])
    writer.writerow([])
    writer.writerow(['Teams Without Managers'])

    for team in teams_without_managers:
        writer.writerow([team.teamName])

    return response


def export_reports_pdf(request):
    teams_without_managers = Team.objects.filter(manager__isnull=True)

    html = render_to_string('reports/reports_pdf.html', {
        'number_of_teams': Team.objects.count(),
        'number_of_departments': Department.objects.count(),
        'number_of_engineers': Engineer.objects.count(),
        'teams_without_managers': teams_without_managers,
    })

    pdf = HTML(string=html).write_pdf()
    buffer = io.BytesIO(pdf)
    buffer.seek(0)

    return FileResponse(buffer, as_attachment=True, filename='sky_reports.pdf')