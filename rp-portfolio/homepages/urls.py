from django.urls import path
from .views import indexPageView
from .views import chocolatePageView

urlpatterns = [
    path("", indexPageView, name='index'),
    path("chocolate/", chocolatePageView, name="about"),
]