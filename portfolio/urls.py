from django.urls import path
from . import views


urlpatterns = [
	path('portfolio/', views.portfolio_view, name = "portfolio_name")
]