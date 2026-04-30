from django.shortcuts import render
from organisation.models import Team, Department, Engineer
import io
from django.http import HttpResponse, FileResponse
from django.template.loader import render_to_string
from openpyxl import Workbook

# View function to generate and display reports page
def reports_overview(request):

    # Get total number of teams from database
    number_of_teams = Team.objects.count()

    # Get total number of departments
    number_of_departments = Department.objects.count()

    # Get total number of engineers
    number_of_engineers = Engineer.objects.count()

    # Filter teams that do not have a manager assigned
    teams_without_managers = Team.objects.filter(manager__isnull=True)

    # Store all report data in a dictionary (context)
    context = {
        'number_of_teams': number_of_teams,
        'number_of_departments': number_of_departments,
        'number_of_engineers': number_of_engineers,
        'teams_without_managers': teams_without_managers,
    }
    # Render the reports page and pass data to template
    return render(request, 'reports/reports_overview.html', context)

# Export report data as an Excel file
def export_reports_excel(request):

    # Retrieve summary data from database using Django ORM
    number_of_teams = Team.objects.count()
    number_of_departments = Department.objects.count()
    number_of_engineers = Engineer.objects.count()

    # Get list of teams without assigned managers
    teams_without_managers = Team.objects.filter(manager__isnull=True)

    # Create a new Excel workbook and worksheet
    workbook = Workbook()
    worksheet = workbook.active
    worksheet.title = "Reports"

    # Add report summary data into Excel file
    worksheet.append(['Report Item', 'Value'])
    worksheet.append(['Number of teams', number_of_teams])
    worksheet.append(['Number of departments', number_of_departments])
    worksheet.append(['Number of engineers', number_of_engineers])

    # Add spacing row
    worksheet.append([])

    # Add section for teams without managers
    worksheet.append(['Teams Without Managers'])

    # Loop through filtered teams and add their names
    for team in teams_without_managers:
        worksheet.append([team.teamName])

    # Create HTTP response to return Excel file to user
    response = HttpResponse(
        content_type='application/vnd.openxmlformats-officedocument.spreadsheetml.sheet'
    )
    # Set file name for download
    response['Content-Disposition'] = 'attachment; filename="sky_reports.xlsx"'
    
    # Save workbook into response
    workbook.save(response)

    return response

# Export report data as a PDF file
def export_reports_pdf(request):

    # Import WeasyPrint inside function to avoid loading errors at startup
    from weasyprint import HTML

    # Retrieve summary data from database
    number_of_teams = Team.objects.count()
    number_of_departments = Department.objects.count()
    number_of_engineers = Engineer.objects.count()
    
    # Get teams without managers
    teams_without_managers = Team.objects.filter(manager__isnull=True)

    # Render HTML template with report data
    html = render_to_string('reports/reports_pdf.html', {
        'number_of_teams': number_of_teams,
        'number_of_departments': number_of_departments,
        'number_of_engineers': number_of_engineers,
        'teams_without_managers': teams_without_managers,
    })

    # Convert HTML into PDF
    pdf = HTML(string=html).write_pdf()

    # Store PDF in memory buffer
    buffer = io.BytesIO(pdf)

    # Return PDF file as downloadable response
    return FileResponse(buffer, as_attachment=True, filename='sky_reports.pdf')