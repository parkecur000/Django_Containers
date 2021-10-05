from django.shortcuts import render
from django.http import HttpResponse
from .models import Donuts
# Create your views here.

def indexPageView(request) :

    data = Donuts.objects.all()

    context = {
        "donuts": data
    }

    return render(request, 'homepages/index.html', context)


def chocolatePageView(request) :
    return render(request, 'homepages/chocolate.html')
