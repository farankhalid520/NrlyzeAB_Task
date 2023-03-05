# Generated by Django 4.1.7 on 2023-03-02 01:33

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    initial = True

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='ThreeDBlocks',
            fields=[
                ('id', models.BigAutoField(db_column='Id', primary_key=True, serialize=False)),
                ('name', models.CharField(blank=True, db_column='Name', max_length=128, null=True)),
                ('object_id', models.IntegerField(blank=True, db_column='ObjectId', null=True)),
                ('group', models.IntegerField(blank=True, db_column='Group', null=True)),
                ('left_corner_lat', models.FloatField(blank=True, db_column='LeftCornerLat', null=True)),
                ('left_corner_long', models.FloatField(blank=True, db_column='LeftCornerLong', null=True)),
                ('right_corner_lat', models.FloatField(blank=True, db_column='RightCornerLat', null=True)),
                ('right_corner_long', models.FloatField(blank=True, db_column='RightCornerLong', null=True)),
                ('width', models.FloatField(blank=True, db_column='Width', null=True)),
                ('z_offset', models.FloatField(blank=True, db_column='ZOffset', null=True)),
            ],
            options={
                'db_table': '3D_BLOCKS',
            },
        ),
        migrations.CreateModel(
            name='ThreeDFloorTemplate',
            fields=[
                ('id', models.BigAutoField(db_column='Id', primary_key=True, serialize=False)),
                ('name', models.CharField(db_column='Name', max_length=128)),
            ],
            options={
                'db_table': '3D_FLOOR_TEMPLATES',
            },
        ),
        migrations.CreateModel(
            name='ThreeDFloorTemplateSpace',
            fields=[
                ('id', models.BigAutoField(db_column='Id', primary_key=True, serialize=False)),
                ('space_number', models.IntegerField(db_column='SpaceNumber')),
                ('pos_x', models.FloatField(db_column='PosX')),
                ('pos_y', models.FloatField(db_column='PosY')),
                ('size_x', models.FloatField(db_column='SizeX')),
                ('size_y', models.FloatField(db_column='SizeY')),
                ('template', models.ForeignKey(db_column='TemplateId', on_delete=django.db.models.deletion.CASCADE, to='MapsAPI.threedfloortemplate')),
            ],
            options={
                'db_table': '3D_FLOOR_TEMPLATE_SPACES',
            },
        ),
        migrations.CreateModel(
            name='ThreeDFloors',
            fields=[
                ('id', models.BigAutoField(db_column='Id', primary_key=True, serialize=False)),
                ('floor_number', models.IntegerField(blank=True, db_column='FloorNumber', null=True)),
                ('height', models.FloatField(blank=True, db_column='Height', null=True)),
                ('block_id', models.ForeignKey(db_column='BlockId', on_delete=django.db.models.deletion.CASCADE, to='MapsAPI.threedblocks')),
                ('template_id', models.ForeignKey(db_column='TemplateId', on_delete=django.db.models.deletion.CASCADE, to='MapsAPI.threedfloortemplate')),
            ],
            options={
                'db_table': '3D_FLOORS',
            },
        ),
        migrations.AddIndex(
            model_name='threedfloortemplatespace',
            index=models.Index(fields=['template'], name='DD_FLOOR_TE_Templat_1487ee_idx'),
        ),
    ]