# views.py
# This file contains all the admin views for the organisation admin panel.
# It imports models from the organisation app (we never duplicate models).
# Every view requires the user to be logged in via @login_required.

from datetime import datetime

from django.contrib.auth.decorators import login_required
from django.shortcuts import get_object_or_404, redirect, render

# Import models from the organisation app — we share them, never copy them
from organisation.models import AuditLog, Department, Engineer, Team

# Import the forms we defined in this app's forms.py
from .forms import DepartmentForm, EngineerForm, TeamForm


# _log() — helper function to write a record to the Audit_Log table.
# Called every time an admin makes a change (edit or delete).
# Parameters:
#   entity_type — what was changed e.g. 'Department', 'Team', 'Engineer'
#   action_type — what was done e.g. 'UPDATE', 'DELETE'
#   user        — the currently logged-in user (from request.user)
def _log(entity_type, action_type, user):
    AuditLog.objects.create(
        editEntityType=entity_type,
        editActionType=action_type,
        # Store a human-readable timestamp e.g. "28 Apr 2026, 19:45"
        editTimestamp=datetime.now().strftime('%d %b %Y, %H:%M'),
        userID=user.id,
    )


# ── Dashboard ─────────────────────────────────────────────────

# dashboard — the main admin panel page.
# Loads all departments, teams, engineers and the 10 most recent
# audit log entries, then passes them to the template.
@login_required
def dashboard(request):
    return render(request, 'organisation_admin/admin_panel.html', {
        'departments': Department.objects.all(),
        # select_related fetches the related department in the same
        # database query instead of making a separate query per row
        'teams':       Team.objects.select_related('department').all(),
        'engineers':   Engineer.objects.select_related('team', 'department').all(),
        # order_by('-auditLogID') gets the most recent entries first
        'recent_logs': AuditLog.objects.order_by('-auditLogID')[:10],
    })


# ── Department ────────────────────────────────────────────────

# edit_department — handles both showing the edit form (GET)
# and saving the changes (POST).
# Django's ModelForm does all validation automatically.
@login_required
def edit_department(request, dept_id):
    # get_object_or_404 fetches the department or shows a 404 page
    # if it doesn't exist — safer than a plain .get()
    dept = get_object_or_404(Department, departmentID=dept_id)

    # If POST: bind the submitted data to the form
    # If GET:  create a blank form pre-filled with the existing data
    form = DepartmentForm(request.POST or None, instance=dept)

    if form.is_valid():
        form.save()                           # Save changes to the database
        _log('Department', 'UPDATE', request.user)  # Write to Audit_Log
        return redirect('org_admin_dashboard')      # Go back to dashboard
    
    # If GET or form has errors, render the edit page
    return render(request, 'organisation_admin/edit_department.html', {
        'form': form,
        'dept': dept,   # Passed so the template can show the department name in the title
    })


# delete_department — shows a confirmation page (GET)
# and deletes the record if confirmed (POST).
@login_required
def delete_department(request, dept_id):
    dept = get_object_or_404(Department, departmentID=dept_id)

    if request.method == 'POST':
        # Only delete when the user has confirmed via the POST form
        dept.delete()
        _log('Department', 'DELETE', request.user)
        return redirect('org_admin_dashboard')

    # GET: show the "Are you sure?" confirmation page
    return render(request, 'organisation_admin/delete_confirm.html', {
        'object_name': dept.departmentName,  # Displayed in the confirmation message
        'cancel_url':  'org_admin_dashboard',
    })


# ── Team ──────────────────────────────────────────────────────

# edit_team — same pattern as edit_department but for teams
@login_required
def edit_team(request, team_id):
    team = get_object_or_404(Team, teamID=team_id)
    form = TeamForm(request.POST or None, instance=team)

    if form.is_valid():
        form.save()
        _log('Team', 'UPDATE', request.user)
        return redirect('org_admin_dashboard')

    return render(request, 'organisation_admin/edit_team.html', {
        'form': form,
        'team': team,
    })


# delete_team — same pattern as delete_department but for teams
@login_required
def delete_team(request, team_id):
    team = get_object_or_404(Team, teamID=team_id)

    if request.method == 'POST':
        team.delete()
        _log('Team', 'DELETE', request.user)
        return redirect('org_admin_dashboard')

    return render(request, 'organisation_admin/delete_confirm.html', {
        'object_name': team.teamName,
        'cancel_url':  'org_admin_dashboard',
    })


# ── Engineer ──────────────────────────────────────────────────

# edit_engineer — same pattern as above but for engineers
@login_required
def edit_engineer(request, engineer_id):
    eng = get_object_or_404(Engineer, engineerID=engineer_id)
    form = EngineerForm(request.POST or None, instance=eng)

    if form.is_valid():
        form.save()
        _log('Engineer', 'UPDATE', request.user)
        return redirect('org_admin_dashboard')

    return render(request, 'organisation_admin/edit_engineer.html', {
        'form': form,
        'eng':  eng,
    })


# delete_engineer — same pattern as above but for engineers
@login_required
def delete_engineer(request, engineer_id):
    eng = get_object_or_404(Engineer, engineerID=engineer_id)

    if request.method == 'POST':
        eng.delete()
        _log('Engineer', 'DELETE', request.user)
        return redirect('org_admin_dashboard')

    return render(request, 'organisation_admin/delete_confirm.html', {
        'object_name': eng.engineerName,
        'cancel_url':  'org_admin_dashboard',
    })