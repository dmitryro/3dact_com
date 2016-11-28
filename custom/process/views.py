from django.shortcuts import render

# Restless Endpoints 
from restless.views import Endpoint
import svglib
from reportlab.graphics import renderPDF
from svglib.svglib import svg2rlg
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

from PIL import Image
import base64
import requests
from StringIO import StringIO
from io import BytesIO
import urllib2
import cStringIO
import urllib

import cairo
import rsvg
# Import urlopen() for either Python 2 or 3.
try:
    from urllib.request import urlopen
except ImportError:
    from urllib2 import urlopen


from custom.utils.models import Logger

def decode_base64(data):
    """Decode base64, padding being optional.

    :param data: Base64 data as an ASCII byte string
    :returns: The decoded byte string.

    """
    missing_padding = len(data) % 4
    if missing_padding != 0:
        data += b'='* (4 - missing_padding)
    return base64.decodestring(data)

class ImageProcessView(Endpoint):

    @csrf_exempt
    def get(self, request):

         log = Logger(log='I TESTED IT')
         log.save()
         return {'message':'we tasted it'}


    @csrf_exempt
    def post(self, request):

         try:
             url= request.data['url']
  #           response = requests.get(url)
            # img = Image.open(StringIO(response.content))
#             response = requests.get(url).content
#             url = base64.b64decode(url.replace('.', '='))
                
      #i       im = Image.open(BytesIO(base64.b64decode(decode_base64(url))))
 #            byteImg = Image.open(url)

             svg_str =str(urllib.urlopen(url).read())

             with open('./media/out.svg', 'w') as file_:
                     file_.write(svg_str)
           
             log = Logger(log='CHECKING URL '+svg_str)
             log.save()
             
             drawing = svg2rlg(svg_str)
#             renderPDF.drawToFile(drawing, "file.pdf")

 #            image_data = BytesIO(urllib.urlopen(url).read())
 #            image_data.seek(0)

#             img = Image.open(image_data) 
            # pictureIO = StringIO(image_data)
            # pictureIO.seek(0)   


             img = cairo.ImageSurface(cairo.FORMAT_ARGB32, 800,1000)

             ctx = cairo.Context(img)

## handle = rsvg.Handle(<svg filename>)
# or, for in memory SVG data:
             handle= rsvg.Handle(None,str(urllib.urlopen(url).read()))

             handle.render_cairo(ctx)

             img.write_to_png("svg.png")


#             img = Image.open(pictureIO)
  #           im = Image.open(pictureIO)
   #          a_pil_image = Image.fromstring('RGB', (300, 500),pictureIO) 
        #     im = BytesIO(decode_base64(url)) 
        #     im.seek(0) 
             #file.seek(0)
         #    byteImg = im.read()
                                   
 
             log = Logger(log='I TESTED IT'+str(url[0:399]))
             log.save()     
         except Exception,R:
             log = Logger(log='WE GOT FUCKED'+str(R))
             log.save()                        
             return {'message':'we tasted it'+str(R)}

         return {'message':'we tasted it'}            
# Create your views here.
