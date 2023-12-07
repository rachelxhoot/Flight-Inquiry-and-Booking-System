from django.shortcuts import render

# Create your views here.

from django.shortcuts import render, redirect
from web import models
from django.http import HttpResponse, HttpResponseRedirect
import datetime
from django.contrib import messages   # 导入消息模块
import pymysql

import time
import MySQLdb
import hashlib
from django.db.models.functions import ExtractHour, ExtractMinute
from django.contrib.auth.hashers import make_password, check_password

def show_flight_list(request):
    flight_list = models.Flight.objects.all()
    if(request.method == 'POST'):
        b_departure = request.POST.get('b_departure')
        b_destination = request.POST.get('b_destination')
        b_flight_id = request.POST.get('b_flight_id')
        if(b_destination):
            if(b_departure):
                b_search = models.Flight.objects.filter(departure__airport_name__contains=b_departure, destination__airport_name__contains=b_destination)
                flight_list = b_search

        id_search = models.Flight.objects.filter(flight_id=b_flight_id)
        if(id_search):
            flight_list = id_search
    return render(request, "flight.xhtml", {"flight_list": flight_list})

def buy_flight(request):
    if(request.method == 'POST'):
        c_flight_id = request.POST.get('c_flight_id')
        pp = request.POST.get('select_planid')
        ps = request.POST.get('c_pid')
        cc_flight_id = request.POST.get('cc_flight_id')
        flight_this = models.Flight.objects.filter(flight_id=c_flight_id)

        seat = models.Seat.objects.filter(flight_id_id=c_flight_id, type='A', state=0)
        num_A=len(seat)
        seat = models.Seat.objects.filter(flight_id_id=c_flight_id, type='B', state=0)
        num_B=len(seat)
        seat = models.Seat.objects.filter(flight_id_id=c_flight_id, type='C', state=0)
        num_C=len(seat)

        if(c_flight_id):
            f = models.Flight.objects.get(flight_id=c_flight_id)
            # datetime.time 字段直接操作！
            hour_a = f.time_of_flight.hour
            m_a = f.time_of_flight.minute
            time_a = hour_a+(m_a/60)
            plan = models.Flight_plan.objects.all()
            return render(request, "buy_flight.xhtml",
                          {"flight_this": flight_this, "num_A": num_A, "num_B": num_B, "num_C": num_C, "time_a": time_a,
                           "plan": plan})
        if(pp):
            models.Trade.objects.create(passenger_id=models.User.objects.get(card_id=ps), flight_id=models.Flight.objects.get(flight_id=cc_flight_id), plan_id=models.Flight_plan.objects.get(plan_id=pp))
            flight_this = models.Flight.objects.filter(flight_id=cc_flight_id)
            f = models.Flight.objects.get(flight_id=cc_flight_id)
            hour_a = f.time_of_flight.hour
            m_a = f.time_of_flight.minute
            time_a = hour_a + (m_a / 60)
            plan = models.Flight_plan.objects.all()
            messages.success(request, '购买成功！')
            return render(request, "buy_flight.xhtml", {"flight_this": flight_this, "num_A": num_A, "num_B": num_B, "num_C": num_C, "time_a": time_a,
                           "plan": plan})
    return render(request, "buy_flight.xhtml")

def sayHello(request):
    s = 'Hello World!'
    current_time = datetime.datetime.now()
    html = '<html><head></head><body><h1> %s </h1><p> %s </p></body></html>' % (s, current_time)
    return HttpResponse(html)

def create_user(request):
    if(request.method == 'POST'):
        a_card_id = request.POST.get('a_card_id')
        a_user_type = request.POST.get('a_user_type')
        a_password = request.POST.get('a_password')

        models.User.objects.create(card_id=a_card_id, user_type=a_user_type, password=a_password)
        messages.success(request, '注册成功！')
    user_list = models.User.objects.all()
    return render(request, 'register.xhtml', {'user_list': user_list})

# 登入界面
def login(request):
    if(request.method == 'POST'):
        b_card_id = request.POST.get('b_card_id')
        b_password = request.POST.get('b_password')
        login_user = models.User.objects.filter(card_id=b_card_id, password=b_password)
        if(login_user):
            login_user = models.User.objects.filter(card_id=b_card_id, password=b_password, user_type='A')
            if(login_user):
                return HttpResponseRedirect('/flight')
            else:
                login_user = models.User.objects.filter(card_id=b_card_id, password=b_password, user_type='B')
                if (login_user):
                    return HttpResponseRedirect('/seat')
                else:
                    login_user = models.User.objects.filter(card_id=b_card_id, password=b_password, user_type='C')
                    if (login_user):
                        return HttpResponseRedirect('/manage')
        else:
            messages.success(request, '输入账号有误，登陆失败！')

    return render(request, 'index.xhtml')

def delete_flight(request):
    if(request.method == 'POST'):
        a_id = request.POST.get('a_id')
        conn = MySQLdb.connect(host="localhost", user="root", passwd="010806Zst_", db="aviation", charset='utf8')
        with conn.cursor(cursor=MySQLdb.cursors.DictCursor) as cursor:
            cursor.callproc('delete_flight', (a_id,))
            conn.commit()
            messages.success(request, '删除成功！')

    return render(request, 'delete_flight.xhtml')

def update_flight(request):
    if (request.method == 'POST'):
        a_d_id = request.POST.get('a_d_id')
        a_d_time = request.POST.get('a_d_time')
        models.Flight.objects.filter(flight_id=a_d_id).update(departure_time=a_d_time)
        messages.success(request, '更新成功！')
    return render(request, 'update_flight.xhtml')

# 考虑对数据库中的密码进行加密
# def _hash_password(userpassword):
#     sha = hashlib.sha256()
#     sha.update(userpassword.encode(encoding='utf-8'))
#     return sha.hexdigest()

def show_seat(request):
    seat_search = models.Seat.objects.all()
    d_trade = models.Trade.objects.all()
    if (request.method == 'POST'):
        d_flight_id = request.POST.get('d_flight_id')
        d1_flight_id = request.POST.get('d1_flight_id')
        seat_search = models.Seat.objects.filter(flight_id=d_flight_id)
        d_pid = request.POST.get('d_pid')
        d_sid = request.POST.get('d_sid')
        d_trade = models.Trade.objects.filter(passenger_id=d_pid,flight_id=d1_flight_id)
        if(d_trade):
            models.Seat.objects.filter(seat_id=d_sid, flight_id=d1_flight_id).update(state=1, passenger_id=d_pid)
            messages.success(request, '值机成功！')
        else:
            messages.success(request, '交易不存在！')
    return render(request, "seat.xhtml", {"seat_search": seat_search, "d_trade": d_trade})

def manage_flight_show(request):
    flight_list1 = models.Flight.objects.all()
    num = models.count.objects.get(name="usercount")
    user_num =num.number
    return render(request, "manage.xhtml", {"flight_list": flight_list1, "user_num": user_num})
