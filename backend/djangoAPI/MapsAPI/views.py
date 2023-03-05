from django.shortcuts import render
from django.shortcuts import render
from django.views.decorators.csrf import csrf_exempt
from rest_framework.parsers import JSONParser
from django.http.response import JsonResponse

from MapsAPI.models import ThreeDBlocks,ThreeDFloors,ThreeDFloorTemplate,ThreeDFloorTemplateSpace
from MapsAPI.serializers import ThreeDBlocksSerializer,ThreeDFloorsSerializer,ThreeDFloorTemplateSerializer,ThreeDFloorTemplateSpaceSerializer


# Serializer for ThreeDBlocks model
@csrf_exempt
def ThreeDBlocksApi(request, id=0):
    if request.method == 'POST':
        ThreeDBlocks_data = JSONParser().parse(request)
        ThreeDBlocks_serializer = ThreeDBlocksSerializer(data=ThreeDBlocks_data)
        if ThreeDBlocks_serializer.is_valid():
            ThreeDBlocks_serializer.save()
            return JsonResponse("Added Successfully", safe=False)
        return JsonResponse("Failed to Add", safe=False)
    elif request.method == 'GET':
        threeDBlocks = ThreeDBlocks.objects.all()
        ThreeDBlocks_serializer = ThreeDBlocksSerializer(threeDBlocks, many=True)
        return JsonResponse(ThreeDBlocks_serializer.data, safe=False)
    

# APIs for ThreeDFloors model   
@csrf_exempt
def ThreeDFloorsApi(request, id=0):
    if request.method == 'POST':
        ThreeDFloors_data = JSONParser().parse(request)
        ThreeDFloors_serializer = ThreeDFloorsSerializer(data=ThreeDFloors_data)
        if ThreeDFloors_serializer.is_valid():
            ThreeDFloors_serializer.save()
            return JsonResponse("Added Successfully", safe=False)
        return JsonResponse("Failed to Add", safe=False)
    elif request.method == 'GET':
        threeDFloors = ThreeDFloors.objects.all()
        ThreeDFloors_serializer = ThreeDFloorsSerializer(threeDFloors, many=True)
        return JsonResponse(ThreeDFloors_serializer.data, safe=False)
   
# APIs for ThreeDFloorTemplate model
@csrf_exempt
def ThreeDFloorTemplateApi(request, id=0):
    if request.method == 'POST':
        ThreeDFloorTemplate_data = JSONParser().parse(request)
        ThreeDFloorTemplate_serializer = ThreeDFloorTemplateSerializer(data=ThreeDFloorTemplate_data)
        if ThreeDFloorTemplate_serializer.is_valid():
            ThreeDFloorTemplate_serializer.save()
            return JsonResponse("Added Successfully", safe=False)
        return JsonResponse("Failed to Add", safe=False)
    elif request.method == 'GET':
        threeDFloorTemplates = ThreeDFloorTemplate.objects.all()
        ThreeDFloorTemplate_serializer = ThreeDFloorTemplateSerializer(threeDFloorTemplates, many=True)
        return JsonResponse(ThreeDFloorTemplate_serializer.data, safe=False)
    

# APIs for ThreeDFloorTemplateSpace model
@csrf_exempt
def ThreeDFloorTemplateSpaceApi(request, id=0):
    if request.method == 'POST':
        ThreeDFloorTemplateSpace_data = JSONParser().parse(request)
        ThreeDFloorTemplateSpace_serializer = ThreeDFloorTemplateSpaceSerializer(data=ThreeDFloorTemplateSpace_data)
        if ThreeDFloorTemplateSpace_serializer.is_valid():
            ThreeDFloorTemplateSpace_serializer.save()
            return JsonResponse("Added Successfully", safe=False)
        return JsonResponse("Failed to Add", safe=False)
    elif request.method == 'GET':
        threeDFloorTemplateSpaces = ThreeDFloorTemplateSpace.objects.all()
        ThreeDFloorTemplateSpace_serializer = ThreeDFloorTemplateSpaceSerializer(threeDFloorTemplateSpaces, many=True)
        return JsonResponse(ThreeDFloorTemplateSpace_serializer.data, safe=False)
   