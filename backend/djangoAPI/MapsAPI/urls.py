from django.urls import re_path
from MapsAPI import views

from django.conf.urls.static import static

urlpatterns=[
    re_path(r'^ThreeDBlocks$',views.ThreeDBlocksApi),
    re_path(r'^ThreeDBlocks/([0-9]+)$',views.ThreeDBlocksApi),

    re_path(r'^ThreeDFloors$',views.ThreeDFloorsApi),
    re_path(r'^ThreeDFloors/([0-9]+)$',views.ThreeDFloorsApi),

    re_path(r'^ThreeDFloorTemplate$',views.ThreeDFloorTemplateApi),
    re_path(r'^ThreeDFloorTemplate/([0-9]+)$',views.ThreeDFloorTemplateApi),

    re_path(r'^ThreeDFloorTemplateSpace$',views.ThreeDFloorTemplateSpaceApi),
    re_path(r'^ThreeDFloorTemplateSpace/([0-9]+)$',views.ThreeDFloorTemplateSpaceApi),
]