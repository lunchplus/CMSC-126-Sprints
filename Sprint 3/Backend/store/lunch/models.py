from django.db import models
import datetime
import os
# Create your models here.

def get_file_path(request, filename):
    og_filename = filename
    nowTime = datetime.datetime.now().strftime('%Y%m%d%H:%M:%S')
    filename = "%s%s" % (nowTime, og_filename)
    return os.path.join('uploads/', filename)

class Category(models.Model):
    slug = models.CharField(max_length=150, null=False, blank=False)
    name = models.CharField(max_length=150, null=False, blank=False)
    status = models.BooleanField(default=False, help_text="0-default, 1=hidden")
    created_at = models.DateField(auto_now_add=True)

    def __str__(self):
        return self.name

class Product(models.Model):
    slug = models.CharField(max_length=150, null=False, blank=False)
    name = models.CharField(max_length=150, null=False, blank=False)
    image = models.ImageField(upload_to=get_file_path, null=False, blank=False)
    description = models.CharField(max_length=250, null=False, blank=False)
    status = models.BooleanField(default=False, help_text="0-default, 1=hidden")
    og_price = models.FloatField(null=False, blank=False)
    sell_price = models.FloatField(null=False, blank=False)
    tag = models.CharField(max_length=150, null=False, blank=False)
    created_at = models.DateField(auto_now_add=True)

    def __str__(self):
        return self.name
    