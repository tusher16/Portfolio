from django.db import models
from django.contrib.auth.models import User



STATUS = (
    (0,"Draft"),
    (1,"Publish")
)

class Project(models.Model):
    project_title = models.CharField(max_length=200, unique=True, blank=True)
    slug = models.SlugField(max_length=200, unique=True, blank=True)
    author = models.ForeignKey(User, on_delete= models.CASCADE,related_name='blog_posts')
    updated_on = models.DateTimeField(auto_now= True)
    project_discription = models.TextField(max_length=600,blank=True, null=True)
    project_main_image = models.ImageField(blank=True, null=True)   

    #company_size = models.CharField(max_length=200, unique=True, blank=True, null=True)
    client_name = models.CharField(max_length=200, unique=True, blank=True, null=True)
    technology_used = models.CharField(max_length=200, unique=True, blank=True, null=True)
    company_size = models.CharField(max_length=200, unique=True, blank=True, null=True)
    
    project_github_link = models.URLField(("project_github_link"), 
        max_length=128, 
        db_index=True, 
        unique=True, 
        blank=True
    )
    client_link = models.URLField(("Client_link"), 
        max_length=128, 
        db_index=True, 
        unique=True, 
        blank=True
    )

    content = models.TextField(blank = True)

    project_requirement = models.TextField(blank = True)

    project_image_2 = models.ImageField(blank=True, null=True)
    project_image_3 = models.ImageField(blank=True, null=True)

    project_overview = models.TextField(blank = True)

    project_Challenge = models.TextField(blank = True)

    approach_Solution = models.TextField(blank = True)

    client_Testimonial = models.TextField(blank = True)



    created_on = models.DateTimeField(auto_now_add=True)
    status = models.IntegerField(choices=STATUS, default=0)

    class Meta:
        ordering = ['-created_on']

    def __str__(self):
        return self.project_title
