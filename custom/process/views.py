from django.shortcuts import render

# Restless Endpoints 
from restless.views import Endpoint

# Django Imports
import django.contrib.auth as auth
from django.contrib.auth import authenticate
from django.contrib.auth import login
from django.core.exceptions import ObjectDoesNotExist
from django.views.decorators.csrf import csrf_exempt
from django.contrib.auth.models import User
from django.core.cache import cache
from django.conf import settings
from django.db.models import Q,Min,Max

from custom.utils.models import Logger

class ImageProcessView(Endpoint):

    @csrf_exempt
    def get(self, request):

         log = Logger(log='I TESTED IT')
         log.save()
         return {'message':'we tasted it'}


    @csrf_exempt
    def post(self, request):

         try:
             img = request.data['url']
             log = Logger(log='I TESTED IT'+str(img[0:399]))
             log.save()     
         except Exception,R:
             log = Logger(log='WE GOT FUCKED'+str(R))
             log.save()                        
             return {'message':'we tasted it'+str(R)}

         return {'message':'we tasted it'}            
# Create your views here.
