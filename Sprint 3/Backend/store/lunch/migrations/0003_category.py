# Generated by Django 4.0.4 on 2022-05-29 01:24

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('lunch', '0002_product_status'),
    ]

    operations = [
        migrations.CreateModel(
            name='Category',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('slug', models.CharField(max_length=150)),
                ('name', models.CharField(max_length=150)),
                ('status', models.BooleanField(default=False, help_text='0-default, 1=hidden')),
                ('created_at', models.DateField(auto_now_add=True)),
            ],
        ),
    ]
