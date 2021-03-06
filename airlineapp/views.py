from django.shortcuts import render

# Create your views here.
from rest_framework import status
from rest_framework.decorators import api_view
from rest_framework.response import Response
from rest_framework.views import APIView

from airlineapp.models import Customer, Ffc, Seat, LegInstance, Reward
from airlineapp.serializers import FfcSerializer, CustomerSerializer, SeatSerializer, RewardSerializer


def goster(request):
    return render(request, 'book.html')

@api_view(['GET'])
def Customerliste(request):
    try:
        customer = Customer.objects.all()
    except Customer.DoesNotExist:
        return Response(status=status.HTTP_404_NOT_FOUND)
    serializer = CustomerSerializer(customer, many=True )
    return Response(serializer.data)

@api_view(['GET'])
def getCustomer(request):
    try:
        customer = Customer.objects.get(passport_number=request.GET['passport'])
    except Customer.DoesNotExist:
        return Response(status=status.HTTP_404_NOT_FOUND)
    serializer = CustomerSerializer(customer)
    return Response(serializer.data)

@api_view(['POST'])
def UpdateCustomer(request):
    try:
        customer = Customer.objects.filter(passport_number=request.POST['passport'])
        customer.update(phone = request.POST['phone'])
    except Customer.DoesNotExist:
        return Response(status=status.HTTP_404_NOT_FOUND)
    serializer = CustomerSerializer(customer, many=True )
    return Response(serializer.data)

@api_view(['POST', 'DELETE'])
def deleteCustomer(request):
    try:
        customer = Customer.objects.filter(passport_number=request.POST['passport'])
    except Customer.DoesNotExist:
        return Response(status=status.HTTP_404_NOT_FOUND)
    customer.delete()
    return Response(status=status.HTTP_204_NO_CONTENT)

@api_view(['POST', 'PUT'])
def insertCustomer(request):
    try:
        customer = Customer.objects.create(passport_number=request.POST['passport'],
                                           name=request.POST['name'],
                                           phone=request.POST['phone'],
                                           e_mail=request.POST['e_mail'],
                                           country=request.POST['country'],
                                           adress=request.POST['adress'])
    except Customer.DoesNotExist:
        return Response(status=status.HTTP_404_NOT_FOUND)
    return Response(status=status.HTTP_204_NO_CONTENT)

@api_view(['GET'])
def SeatListe(request):
    try:
        seat = Seat.objects.all()
    except Seat.DoesNotExist:
        return Response(status=status.HTTP_404_NOT_FOUND)
    serializer = SeatSerializer(seat, many=True)
    return Response(serializer.data)



@api_view(['POST'])
def UpdateSeat(request):
    try:
        seat = Seat.objects.filter(flight_number=request.POST['flight_number'],
                         leg_number=request.POST['leg_number'],
                         date=request.POST['date'],
                         seat_number=request.POST['seat_number'])
        seat.update(checked = request.POST['check'])
    except Seat.DoesNotExist:
        return Response(status=status.HTTP_404_NOT_FOUND)
    serializer = SeatSerializer(seat, many=True )
    return Response(serializer.data)

@api_view(['POST'])
def ReservationSeat(request):
    try:
        seat = Seat.objects.filter(flight_number=request.POST['flight_number'],
                         leg_number=request.POST['leg_number'],
                         date=request.POST['date'],
                         seat_number=request.POST['seat_number'])
        seat.update(passport_number = request.POST['passport_number'])
    except Seat.DoesNotExist:
        return Response(status=status.HTTP_404_NOT_FOUND)
    serializer = SeatSerializer(seat, many=True )
    return Response(serializer.data)


class FfcListesi(APIView):
    def get(self, request):
        ffcler = Ffc.objects.all()
        serializer = FfcSerializer(ffcler, many=True)
        return Response(serializer.data)

    def post(self):
        pass

class RewardListe(APIView):
    def get(self, request):
        reward= Reward.objects.all()
        serializer = RewardSerializer(reward, many=True)
        return Response(serializer.data)

    def post(self):
        pass



@api_view(['GET', 'PUT', 'DELETE'])
def getMusteriPP(request, pp=""):
    try:
        if pp == "":
            customers = Customer.objects.all()
        else:
            customers = Customer.objects.get(pk=pp)
    except Customer.DoesNotExist:
        return Response(status=status.HTTP_404_NOT_FOUND)

    if request.method == 'GET':
        if pp == "":
            serializer = CustomerSerializer(customers, many=True) #many true birden fazla customer için
        else:
            serializer = CustomerSerializer(customers)

        return Response(serializer.data)

    elif request.method == 'PUT':
        serializer = CustomerSerializer(customers, data=request.data)
        if serializer.is_valid():
            serializer.save()
            return Response(serializer.data)
        return Response(serializer.errors, status=status.HTTP_400_BAD_REQUEST)

    elif request.method == 'DELETE':
        customers.delete()
        return Response(status=status.HTTP_204_NO_CONTENT)


