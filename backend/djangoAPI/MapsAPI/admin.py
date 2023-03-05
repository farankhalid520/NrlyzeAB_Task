from django.contrib import admin
from .models import ThreeDBlocks,ThreeDFloors,ThreeDFloorTemplate,ThreeDFloorTemplateSpace
# Register your models here.

admin.site.register(ThreeDBlocks)
admin.site.register(ThreeDFloors)
admin.site.register(ThreeDFloorTemplate)
admin.site.register(ThreeDFloorTemplateSpace)
