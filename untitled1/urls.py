"""untitled1 URL Configuration

The `urlpatterns` list routes URLs to views. For more information please see:
    https://docs.djangoproject.com/en/3.1/topics/http/urls/
Examples:

    path('delete_customer'),
    path('get_ffc', views.FfcListesi.as_view()),
    path ('get_reward',),
    path('get_leg_instance'_),
    path('update_leg_instance'),
    path ('get_seat',),
    path('update_seat'),
    path('delete_seat'),
    path('insert_seat'),
Function views
    1. Add an import:  from my_app import views
    2. Add a URL to urlpatterns:  path('', views.home, name='home')
Class-based views
    1. Add an import:  from other_app.views import Home
    2. Add a URL to urlpatterns:  path('', Home.as_view(), name='home')
Including another URLconf
    1. Import the include() function: from django.urls import include, path
    2. Add a URL to urlpatterns:  path('blog/', include('blog.urls'))
"""
from django.contrib import admin
from django.urls import path
from rest_framework.urlpatterns import format_suffix_patterns

from airlineapp import views

urlpatterns = [
    path('admin/', admin.site.urls),
    path('',views.goster),

    path('customer_liste', views.Customerliste),
    path('get_customer',views.getCustomer),
    path('update_customer', views.UpdateCustomer),
    path('delete_customer', views.deleteCustomer),
    path('insert_customer', views.insertCustomer),


    path('seat_liste', views.SeatListe),
    path('update_seat', views.UpdateSeat),
    path('reservation', views.ReservationSeat),

    path('ffc_liste', views.FfcListesi.as_view()),

    path('reward_liste', views.RewardListe.as_view()),

    path('get_customer/<int:pp>',views.getMusteriPP),

]


urlpatterns=format_suffix_patterns(urlpatterns)