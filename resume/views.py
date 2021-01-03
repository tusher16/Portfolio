from django.shortcuts import render
from django.template.loader import get_template

from main_home.models import Side_Profile

# Create your views here.


def resume_view(request):

    obj = Side_Profile.objects.get()
    
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

    }
    return render(request, 'resume/resume.html', context)