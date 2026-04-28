# forms.py
# This file defines the edit forms for the admin panel.
# Django's ModelForm automatically creates form fields from the model,
# so we don't have to write input fields manually in HTML.

from django import forms
from organisation.models import Department, Team, Engineer


# DepartmentForm — used on the Edit Department page
# Only exposes the three fields we want admins to be able to change
class DepartmentForm(forms.ModelForm):
    class Meta:
        model  = Department
        fields = ['departmentName', 'departmentHead', 'specialisation']
        # widgets add Bootstrap's 'form-control' class so inputs
        # automatically match the site's existing styling
        widgets = {
            'departmentName': forms.TextInput(attrs={'class': 'form-control'}),
            'departmentHead': forms.TextInput(attrs={'class': 'form-control'}),
            'specialisation': forms.TextInput(attrs={'class': 'form-control'}),
        }


# TeamForm — used on the Edit Team page
# Includes dropdowns for department and manager (Django handles
# the dropdown options automatically from the database)
class TeamForm(forms.ModelForm):
    class Meta:
        model  = Team
        fields = ['teamName', 'developmentFocusArea', 'slackChannel', 'department', 'manager']
        widgets = {
            'teamName':             forms.TextInput(attrs={'class': 'form-control'}),
            'developmentFocusArea': forms.TextInput(attrs={'class': 'form-control'}),
            'slackChannel':         forms.TextInput(attrs={'class': 'form-control'}),
            # form-select is Bootstrap's class for styled dropdowns
            'department':           forms.Select(attrs={'class': 'form-select'}),
            'manager':              forms.Select(attrs={'class': 'form-select'}),
        }


# EngineerForm — used on the Edit Engineer page
# Includes dropdowns for team and department assignment
class EngineerForm(forms.ModelForm):
    class Meta:
        model  = Engineer
        fields = ['engineerName', 'engineerEmail', 'engineerExpertise', 'team', 'department']
        widgets = {
            'engineerName':      forms.TextInput(attrs={'class': 'form-control'}),
            # EmailInput gives the browser built-in email format validation
            'engineerEmail':     forms.EmailInput(attrs={'class': 'form-control'}),
            'engineerExpertise': forms.TextInput(attrs={'class': 'form-control'}),
            'team':              forms.Select(attrs={'class': 'form-select'}),
            'department':        forms.Select(attrs={'class': 'form-select'}),
        }