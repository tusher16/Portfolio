from django.urls import path
from . import views


urlpatterns = [
	path('', views.home, name = "home_view"),
	
	path('contact/', views.contact, name = "contact_view"),
	
	
]