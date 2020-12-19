from django.shortcuts import render
from django.template.loader import get_template

# Create your views here.


def resume_view(request):
    context = {}
    return render(request, 'resume/resume.html', context)