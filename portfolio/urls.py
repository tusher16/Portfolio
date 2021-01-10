from django.urls import path
from . import views


urlpatterns = [
	path('portfolio/', views.portfolio_view, name = "portfolio_name"),
	#path('project/', views.portfolioDetail, name = "portfolio_Detail"),

	path('<slug:slug>/', views.portfolioDetail.as_view(), name = "portfolio_Detail"),
]



