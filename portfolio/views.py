from django.shortcuts import render

# Create your views here.

def portfolio_view(request):
    context = {}
    return render(request, 'portfolio/portfolio.html', context)
