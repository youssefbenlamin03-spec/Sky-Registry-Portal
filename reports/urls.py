from django.urls import path
from . import views

urlpatterns = [
    path('', views.reports_overview, name='reports_overview'),
    path('export/excel/', views.export_reports_excel, name='export_reports_excel'),
    path('export/pdf/', views.export_reports_pdf, name='export_reports_pdf'),
]