from django.db import models


class ThreeDBlocks(models.Model):
    id = models.BigAutoField(db_column='Id', primary_key=True)  # Field name made lowercase.
    name = models.CharField(db_column='Name', max_length=128, blank=True, null=True)  # Field name made lowercase.
    object_id = models.IntegerField(db_column='ObjectId', blank=True, null=True)
    group = models.IntegerField(db_column='Group', blank=True, null=True)
    left_corner_lat = models.FloatField(db_column='LeftCornerLat', blank=True, null=True)
    left_corner_long = models.FloatField(db_column='LeftCornerLong', blank=True, null=True)
    right_corner_lat = models.FloatField(db_column='RightCornerLat', blank=True, null=True)
    right_corner_long = models.FloatField(db_column='RightCornerLong', blank=True, null=True)
    width = models.FloatField(db_column='Width', blank=True, null=True)
    z_offset = models.FloatField(db_column='ZOffset', blank=True, null=True)

    class Meta:
        db_table = '3D_BLOCKS'

    def __str__(self):
        return self.id
    
class ThreeDFloors(models.Model):
    id = models.BigAutoField(db_column='Id', primary_key=True)
    block_id = models.ForeignKey('ThreeDBlocks', on_delete=models.CASCADE, db_column='BlockId')
    floor_number = models.IntegerField(db_column='FloorNumber', blank=True, null=True)
    template_id = models.ForeignKey('ThreeDFloorTemplate', on_delete=models.CASCADE, db_column='TemplateId')
    height = models.FloatField(db_column='Height', blank=True, null=True)

    class Meta:
        db_table = '3D_FLOORS' 

    def __str__(self):
        return self.id       
        
class ThreeDFloorTemplate(models.Model):
    id = models.BigAutoField(primary_key=True, db_column='Id')
    name = models.CharField(max_length=128, db_column='Name')

    class Meta:
        db_table = '3D_FLOOR_TEMPLATES'    

    def __str__(self):
        return self.id        

class ThreeDFloorTemplateSpace(models.Model):
    id = models.BigAutoField(primary_key=True, db_column='Id')
    template = models.ForeignKey('ThreeDFloorTemplate', on_delete=models.CASCADE, db_column='TemplateId')
    space_number = models.IntegerField(db_column='SpaceNumber')
    pos_x = models.FloatField(db_column='PosX')
    pos_y = models.FloatField(db_column='PosY')
    size_x = models.FloatField(db_column='SizeX')
    size_y = models.FloatField(db_column='SizeY')

    class Meta:
        db_table = '3D_FLOOR_TEMPLATE_SPACES'
        indexes = [
            models.Index(fields=['template']),
        ]     

    def __str__(self):
        return self.id       