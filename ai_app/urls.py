from django.urls import path
from ai_app import views

urlpatterns = [
    path("", views.home, name="home"),
]