from rest_framework import serializers
from MapsAPI.models import ThreeDBlocks,ThreeDFloors,ThreeDFloorTemplate,ThreeDFloorTemplateSpace

# Serializer for ThreeDBlocks model
class ThreeDBlocksSerializer(serializers.ModelSerializer):
    class Meta:
        model = ThreeDBlocks
        fields = ('id', 'name', 'object_id', 'group', 'left_corner_lat', 'left_corner_long', 'right_corner_lat', 'right_corner_long', 'width', 'z_offset')

# Serializer for ThreeDFloors model
class ThreeDFloorsSerializer(serializers.ModelSerializer):
    class Meta:
        model = ThreeDFloors
        fields = ('id', 'block_id', 'floor_number', 'template_id', 'height')

# Serializer for ThreeDFloorTemplate model
class ThreeDFloorTemplateSerializer(serializers.ModelSerializer):
    class Meta:
        model = ThreeDFloorTemplate
        fields = ('id', 'name')

# Serializer for ThreeDFloorTemplateSpace model
class ThreeDFloorTemplateSpaceSerializer(serializers.ModelSerializer):
    class Meta:
        model = ThreeDFloorTemplateSpace
        fields = ('id', 'template', 'space_numbe', 'pos_x', 'pos_y', 'size_x', 'size_y')
