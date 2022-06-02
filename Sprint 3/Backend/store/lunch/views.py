from django.shortcuts import render
from django.http import HttpResponseRedirect
from django.contrib import messages

from .models import *
from .forms import *


def home(request):
    return render(request, "lunch/index.html")

def store(request):
    products = Product.objects.filter(status=0)
    categories = Category.objects.filter(status=0)
    context = {'products': products, 'categories': categories}
    return render(request, "lunch/store.html", context)

def productview(request, slug):
    if (Product.objects.filter(slug=slug, status=0)):
        product = Product.objects.filter(slug=slug, status=0).first
        context = {'product': product}
    else:
        messages.warning(request, "Item is currently unavailable")
    return render(request, "lunch/products/view.html", context)

def checkoutproduct(request, slug):
    cost = request.POST.get('finalcost', None)
    if (Product.objects.filter(slug=slug, status=0)):
        product = Product.objects.filter(slug=slug, status=0).first
        context = {'product': product, 'cost' : cost}
    else:
        messages.warning(request, "Item is currently unavailable")
    return render(request, "lunch/checkout.html", context)

def about(request):
    return render(request, "lunch/about.html")

def receipt(request):
    return render(request, "lunch/receipt.html")

def help(request):
    return render(request, "lunch/help.html")



