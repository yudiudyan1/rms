from django.db import models

# Create your models here.
"""
class employee(models.Model):
    username = models.CharField(max_length=50, blank=False)
    password = models.CharField(max_length=50, blank=False)
    email = models.CharField(max_length=150, blank=False)
    fname = models.CharField(max_length=50, blank=True)
    lname = models.CharField(max_length=50, blank=True)
"""

class users(models.Model):
    user_name         = models.CharField(max_length=100, blank=True, null=True)
    user_email        = models.CharField(max_length=100, blank=True, null=True)
    user_region       = models.CharField(max_length=45, blank=True, null=True)
    user_country_code = models.CharField(max_length=10, blank=True, null=True)
    user_country      = models.CharField(max_length=45, blank=True, null=True)
    user_cadre        = models.CharField(max_length=100, blank=True, null=True)
    access_permission = models.CharField(max_length=5, blank=True, null=True)
    is_active         = models.IntegerField(blank=True, null=True)
    added_by          = models.CharField(max_length=100, blank=True, null=True)
    last_updated_by   = models.CharField(max_length=100, blank=True, null=True)
    added_on          = models.DateTimeField(auto_now_add=True)
    last_updated_on   = models.DateTimeField(auto_now=True)


class assigned_country(models.Model):
    user_email        = models.CharField(max_length=100, blank=True, null=True)
    user_country      = models.CharField(max_length=100, blank=True, null=True)
    user_region       = models.CharField(max_length=200, blank=True, null=True)
    added_on          = models.DateTimeField(auto_now_add=True)
    last_updated_on   = models.DateTimeField(auto_now=True)
