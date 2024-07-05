from django.urls import path,include
from .views import *

urlpatterns = [
    path('get_data', get_data),
    path('get_list', get_list),
    path('get_list_pos', get_list_pos),
    path('position_report', position_report),
    path('get_one', get_one),
    path('get_fields', get_fields),
]
