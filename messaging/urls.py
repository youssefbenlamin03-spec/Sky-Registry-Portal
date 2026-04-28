from django.urls import path
from . import views

# URL patterns for messaging system
urlpatterns = [

    # Page to view received messages
    path('inbox/', views.inbox, name='inbox'),

    # Page to view sent messages
    path('sent/', views.sent, name='sent'),

    # Page to view drafts
    path('drafts/', views.drafts, name='drafts'),

    # Page to create/send a new message
    path('new/', views.new_message, name='new_message'),

