from django.db import models

from django.db.models.signals import pre_save, pre_delete
from django.dispatch import receiver
# -*- coding: utf-8 -*-

# Create your models here.
class Departure_airport(models.Model):
    airport_name = models.CharField(max_length=50, null=False, primary_key= True)
    location = models.CharField(max_length=50, null=False)

class Flight(models.Model):
    flight_id = models.CharField(max_length=6, null=False, primary_key=True)
    departure = models.ForeignKey('Departure_airport', on_delete=models.PROTECT, null=False, related_name='departure')
    destination = models.ForeignKey('Departure_airport', on_delete=models.PROTECT, null=False, related_name='destination')
    departure_time = models.DateTimeField()
    time_of_flight = models.TimeField()
    TYPE_CHOICE = (
        ('A', '大型客机'),
        ('B', '中型客机'),
        ('C', '小型客机'),
    )
    air_type = models.CharField(max_length=1, null=False,choices=TYPE_CHOICE)
    terminal = models.IntegerField(default=None)

class User(models.Model):
    card_id = models.CharField(max_length=18, null=False, primary_key=True)
    name = models.CharField(max_length=10, default='null')
    TYPE_GENDER = (
        ('M', '女性'),
        ('F', '男性'),
    )
    sex = models.CharField(max_length=1, default='M', choices=TYPE_GENDER)
    TYPE_USER = (
        ('A', ' 乘客'),
        ('B', '值机柜台工作人员'),
        ('C', '客服人员'),
        ('D', '调度中心工作人员')
    )
    user_type = models.CharField(max_length=1, null=False, choices=TYPE_USER)
    password = models.CharField(max_length=20, null=False)

class Flight_plan(models.Model):
    plan_id = models.CharField(max_length=3, null=False, primary_key=True)
    TYPE_SEAT = (
        ('A', '头等舱'),
        ('B', '商务舱'),
        ('C', '经济舱')
    )
    seat_type = models.CharField(max_length=1, null=False, choices=TYPE_SEAT)
    TYPE_SAFE =(
        ('A', '普通'),
        ('B', '中级'),
        ('C', '高级')
    )
    safe_type = models.CharField(max_length=1, default='A', choices=TYPE_SAFE)
    charge = models.IntegerField(null=False)
    max_check = models.IntegerField(default=None)

class Seat(models.Model):
    seat_id = models.CharField(max_length=3, null=False)
    TYPE_SEAT = (
        ('A', '头等舱'),
        ('B', '商务舱'),
        ('C', '经济舱')
    )
    type = models.CharField(max_length=1, null=False, choices=TYPE_SEAT)
    TYPE_STATE =(
        ('0', '未选'),
        ('1', '已选')
    )
    state = models.CharField(max_length=1, default='0', null=False, choices=TYPE_STATE)
    flight_id = models.ForeignKey('Flight', on_delete=models.PROTECT, null=False, related_name='seat_to_flight')
    passenger_id = models.ForeignKey('User', on_delete=models.PROTECT, null=True , related_name='seat_to_user')
    class Meta: # 该表为联合主键
        unique_together=('seat_id', 'flight_id')

class Trade(models.Model):
    passenger_id = models.ForeignKey('User', on_delete=models.PROTECT, default=None, related_name='tradeUser')
    flight_id = models.ForeignKey('Flight', on_delete=models.PROTECT, null=False, related_name='tradeFlight')
    plan_id = models.ForeignKey('Flight_plan', on_delete=models.PROTECT, null=False, related_name='tradePlan')
    class Meta: # 该表为联合主键
        unique_together=('passenger_id', 'flight_id', 'plan_id')

class count(models.Model):
    name = models.CharField(max_length=50, default='用户数', null=True)
    number = models.PositiveSmallIntegerField(default=0)





