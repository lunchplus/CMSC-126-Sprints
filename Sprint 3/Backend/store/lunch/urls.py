from django.urls import path
from . import views

urlpatterns = [
    path('home', views.home, name="home"),
    path('store', views.store, name="store"),
    path('store/<str:slug>', views.productview, name="productview"),
    path('about', views.about, name="about"),
    path('receipt', views.receipt, name="receipt"),
    path('help', views.help, name="help"),
    path('checkout/<str:slug>', views.checkoutproduct, name="checkoutproduct"),
]

