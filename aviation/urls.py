"""aviation URL Configuration

The `urlpatterns` list routes URLs to views. For more information please see:
    https://docs.djangoproject.com/en/3.2/topics/http/urls/
Examples:
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
from django.contrib.staticfiles.views import serve
from django.urls import path
from web import views
from django.conf.urls import url
from django.conf.urls.static import static
from . import settings
# static(settings.STATIC_URL, document_root=settings.STATIC_ROOT)
# from .settings import STATIC_ROOT

urlpatterns = [
    url(r'^flight', views.show_flight_list),
    url(r'^register', views.create_user, name="create_user"),
    url(r'^index', views.login, name="login"),
    url(r'^delete_flight', views.delete_flight, name="delete_flight"),
    url(r'^update_flight', views.update_flight, name="update_flight"),
    url(r'^buy_flight', views.buy_flight, name="buy_flight"),
    url(r'^seat', views.show_seat, name="show_seat"),
    url(r'^manage', views.manage_flight_show, name="manage_flight_show"),
    # path('admin/', admin.site.urls),
    # path('airport_list', views.airport_list),
    url(r'^$', views.sayHello),
    # url(r'^static/(?P<path>.*)$', serve, {'document_root': STATIC_ROOT}),

]
