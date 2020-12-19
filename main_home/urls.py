from django.urls import path
from . import views


urlpatterns = [
	path('', views.home, name = "home_view"),
	path('', views.contact, name = "contact_view"),
	
	
]