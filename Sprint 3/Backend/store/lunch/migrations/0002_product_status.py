# Generated by Django 4.0.4 on 2022-05-26 02:51

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('lunch', '0001_initial'),
    ]

    operations = [
        migrations.AddField(
            model_name='product',
            name='status',
            field=models.BooleanField(default=False, help_text='0-default, 1=hidden'),
        ),
    ]