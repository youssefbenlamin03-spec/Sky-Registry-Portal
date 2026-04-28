# urls.py
# This file maps URLs to views for the organisation admin panel.
# All URLs in this file are prefixed with /organisation-admin/
# when registered in the main registryPortal/urls.py file.

from django.urls import path
from . import views

urlpatterns = [

    # Dashboard — main admin panel page showing all tables + recent activity
    path('', views.dashboard, name='org_admin_dashboard'),

    # Department URLs
    # /organisation-admin/department/1/edit/   → edit form for department 1
    # /organisation-admin/department/1/delete/ → delete confirmation for department 1
    path('department/<int:dept_id>/edit/',   views.edit_department,   name='edit_department'),
    path('department/<int:dept_id>/delete/', views.delete_department, name='delete_department'),

    # Team URLs
    # /organisation-admin/team/1/edit/   → edit form for team 1
    # /organisation-admin/team/1/delete/ → delete confirmation for team 1
    path('team/<int:team_id>/edit/',   views.edit_team,   name='edit_team'),
    path('team/<int:team_id>/delete/', views.delete_team, name='delete_team'),

    # Engineer URLs
    # /organisation-admin/engineer/1/edit/   → edit form for engineer 1
    # /organisation-admin/engineer/1/delete/ → delete confirmation for engineer 1
    path('engineer/<int:engineer_id>/edit/',   views.edit_engineer,   name='edit_engineer'),
    path('engineer/<int:engineer_id>/delete/', views.delete_engineer, name='delete_engineer'),
]