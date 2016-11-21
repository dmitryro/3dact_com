from django.shortcuts import render
from rest_framework import viewsets
from serializers import EmotionSerializer
from rest_pandas.renderers import PandasCSVRenderer
from rest_pandas import PandasView, PandasScatterSerializer
from renderers import PaginatedCSVRenderer
from rest_framework.decorators import renderer_classes
from rest_framework.decorators import api_view
from rest_framework.response import Response

from models import Emotion
# ViewSets define the view behavior.
class EmotionViewSet(viewsets.ModelViewSet):
    queryset = Emotion.objects.all()
    serializer_class = EmotionSerializer

# Pandas Views
class EmotionView(PandasView):
    queryset = Emotion.objects.all()
    serializer_class = EmotionSerializer
    pandas_serializer_class = PandasScatterSerializer

@api_view(['GET'])
@renderer_classes((PaginatedCSVRenderer,))
def emotion_view(request):
    emotions = Emotion.objects.all()
    content = [{'text': emotion.text,
                'temperature': emotion.temperature,
                'index': emotion.index}
               for emotion in emotions]
    return Response(content)
