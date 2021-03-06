
from rest_framework import serializers
from .models import Ffc, Customer, Seat, Reward


class CustomerSerializer(serializers.ModelSerializer):
        class Meta:
                model = Customer
                # fields = ('alis','satis') // belirtilen kisimlari ceker.
                # fields = '__all__' // tum kisimlari ceker.
                fields = '__all__'

class SeatSerializer(serializers.ModelSerializer):
        class Meta:
                model = Seat
                # fields = ('alis','satis') // belirtilen kisimlari ceker.
                # fields = '__all__' // tum kisimlari ceker.
                fields = '__all__'

class FfcSerializer(serializers.ModelSerializer):
        class Meta:
                model = Ffc
                # fields = ('alis','satis') // belirtilen kisimlari ceker.
                # fields = '__all__' // tum kisimlari ceker.
                fields = '__all__'

class RewardSerializer(serializers.ModelSerializer):
        class Meta:
                model = Reward
                # fields = ('alis','satis') // belirtilen kisimlari ceker.
                # fields = '__all__' // tum kisimlari ceker.
                fields = '__all__'