from django.shortcuts import render
from django.template.loader import get_template
from main_home.models import Side_Profile

from django.views import generic

from .models import Project

# Create your views here.

    
def portfolio_view(request):

    obj = Side_Profile.objects.get()

    project_list = Project.objects.all().filter(status=1).order_by('-created_on')
  

    context = {
        'name': obj.name,
        'short_intro': obj.short_intro,
        'side_profile_pic': obj.side_profile_pic,
        'job_status': obj.job_status,
        'long_intro': obj.long_intro,
        'facebook_link' : obj.facebook_link,
        'linkedin_link': obj.linkedin_link,
        'github_link' : obj.github_link,
        'researchgate_link' : obj.researchgate_link,
        'google_sch_link': obj.google_sch_link,
        'my_website_link': obj.my_website_link,
        'main_profile_pic': obj.main_profile_pic,
        'Wid_Short_intro': obj.Wid_Short_intro,

        'project_list': project_list,
            
    }


    return render(request, 'portfolio/portfolio.html', context)



class portfolioDetail(generic.DetailView):
    model = Project
    template_name = 'portfolio/project.html'