from django.contrib import admin
from .models import Project

# Register your models here.

class ProjectAdmin(admin.ModelAdmin):
    list_display = ('project_title', 'slug', 'status','created_on')
    list_filter = ("status",)
    search_fields = ['project_title', 'content']
    prepopulated_fields = {'slug': ('project_title',)}

admin.site.register(Project, ProjectAdmin)