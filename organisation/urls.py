from django.urls import path
from . import views

# URL patterns for the organisation app
urlpatterns = [
    # main organisation overview page
    path('', views.organisation_overview, name='organisation_overview'),

    # department detail page - takes the department ID from the URL
    path('department/<int:department_id>/', views.department_detail, name='department_detail'),
    
    # when a user visits /organisation/team/1/ it shows the detail page for team with id 1
    path('team/<int : team_id>/', views.team_detail, name = 'team_detail'),
]