from django.contrib import admin

# Register your models here.

from web import models
admin.site.register(models.Flight)
admin.site.register(models.User)
admin.site.register(models.Departure_airport)