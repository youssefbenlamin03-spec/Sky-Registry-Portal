from django.urls import path
from . import views

urlpatterns = [
    path('', views.schedule_page, name='schedule'),
    path('add/', views.add_meeting, name='add_meeting'),
    path('delete/<int:id>/', views.delete_meeting, name='delete_meeting'),
]