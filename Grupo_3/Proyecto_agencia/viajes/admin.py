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

class HospedajeInline (admin.TabularInline):
    model = HospedajeAcomodacion
    extra = 1   #aparece un espacio para seleccionar

class HospedajeAdmin (admin.ModelAdmin):
    inlines = [HospedajeInline]


admin.site.register(Acomodacion)
admin.site.register(Hospedaje, HospedajeAdmin)
# admin.site.register(HospedajeAcomodacion)
admin.site.register(Reserva)
admin.site.register(Cliente)
admin.site.register(Destino)
admin.site.register(DetalleReserva)
admin.site.register(Adicion)
admin.site.register(PaqueteTour)
admin.site.register(Tour)
admin.site.register(Paquete)

