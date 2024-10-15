from django.contrib import admin
from .models import (
    Acomodacion,
    Reserva,
    Cliente,
    Destino,
    Hospedaje,
    HospedajeAcomodacion,
    Paquete,
    Tour,
    PaqueteTour,
    Adicion,
    DetalleReserva,
)


class BaseAdmin(admin.ModelAdmin):
    class Media:
        js = ("js/jquery-3.7.1.min.js", "js/paquete.js")

class HospedajeAcomodacionInline(admin.TabularInline):
    model = HospedajeAcomodacion
    extra = 1
class HospedajeAdmin(BaseAdmin):
    inlines = [HospedajeAcomodacionInline]

# Registrar los modelos en el administrador de Django
admin.site.register(Acomodacion)
admin.site.register(Hospedaje, HospedajeAdmin)
admin.site.register(Reserva)
admin.site.register(Cliente)
admin.site.register(Destino)
admin.site.register(DetalleReserva)
admin.site.register(Adicion)
admin.site.register(PaqueteTour)
admin.site.register(Tour)
admin.site.register(Paquete)
# admin.site.register(HospedajeAcomodacion)