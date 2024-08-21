from django.shortcuts import render 
from django.db import connection
from django.http import JsonResponse
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

from .serializers import (
    AcomodacionSerializer,
    ClienteSerializer,
    DestinoSerializer,
    HospedajeSerializer,
    HospedajeAcomodacionSerializer,
    PaqueteSerializer,
    AdicionSerializer,
    TourSerializer,
    PaqueteTourSerializer,
    DetalleReservaSerializer,
    ReservaSerializer,
)

from rest_framework import viewsets

class AcomodacionViewSet(viewsets.ModelViewSet):
    queryset = Acomodacion.objects.all()
    serializer_class = AcomodacionSerializer

class ClienteViewSet(viewsets.ModelViewSet):
    queryset = Cliente.objects.all()
    serializer_class = ClienteSerializer

class DestinoViewSet(viewsets.ModelViewSet):
    queryset = Destino.objects.all()
    serializer_class = DestinoSerializer

class ReservaViewSet(viewsets.ModelViewSet):
    queryset = Reserva.objects.all()
    serializer_class = ReservaSerializer

class HospedajeAcomodacionViewSet(viewsets.ModelViewSet):
    queryset = HospedajeAcomodacion.objects.all()
    serializer_class = HospedajeAcomodacionSerializer

class PaqueteViewSet(viewsets.ModelViewSet):
    queryset = Paquete.objects.all()
    serializer_class = PaqueteSerializer

class HospedajeViewSet(viewsets.ModelViewSet):
    queryset = Hospedaje.objects.all()
    serializer_class = HospedajeSerializer

class TourViewSet(viewsets.ModelViewSet):
    queryset = Tour.objects.all()
    serializer_class = TourSerializer

class PaqueteTourViewSet(viewsets.ModelViewSet):
    queryset = PaqueteTour.objects.all()
    serializer_class = PaqueteTourSerializer

class AdicionViewSet(viewsets.ModelViewSet):
    queryset = Adicion.objects.all()
    serializer_class = AdicionSerializer

class DetalleReservaViewSet(viewsets.ModelViewSet):
    queryset = DetalleReserva.objects.all()
    serializer_class = DetalleReservaSerializer

def index(request):
    return render(request, "index.html")

def buscar_destino (request):
    query=request.GET.get("q","")
    if query: #nombre de la variable
        with connection.cursor() as cursor: #es un metodo para jenerar el jeison y me sirve para retornr el jeison
            cursor.callproc("con_destino", [query])
            resultados = cursor.fetchall()
            columns = [col[0] for col in cursor.description]
            resultado_dict=[dict(zip(columns,row)) for row in resultados]
        return JsonResponse(resultado_dict, safe=False)
    return JsonResponse([], safe=False)