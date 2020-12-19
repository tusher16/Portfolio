from django.shortcuts import render
from django.template.loader import get_template

# Create your views here.

def home(request):
    context = {}
    return render(request, 'main_home/index.html', context)





def contact(request):
    context = {}
    return render(request, 'main_home/contact.html', context)

