from django.contrib.auth.models import User
from django.shortcuts import render


from rest_framework import viewsets
from rest_pandas.renderers import PandasCSVRenderer
from rest_pandas import PandasView, PandasScatterSerializer
from rest_framework.decorators import renderer_classes
from rest_framework.decorators import api_view
from rest_framework.response import Response

from models import State
from models import Profile

from serializers import StateSerializer
from serializers import UserSerializer
from serializers import ProfileSerializer

# ViewSets define the view behavior.
class UserViewSet(viewsets.ModelViewSet):
    queryset = User.objects.all()
    serializer_class = UserSerializer

class StateViewSet(viewsets.ModelViewSet):
    queryset = State.objects.all()
    serializer_class = StateSerializer

class ProfileViewSet(viewsets.ModelViewSet):
    queryset = Profile.objects.all()
    serializer_class = ProfileSerializer

