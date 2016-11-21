from rest_framework.serializers import HyperlinkedModelSerializer
from taggit_serializer.serializers import (TagListSerializerField,
                                           TaggitSerializer)


from models import Emotion
# Serializers define the API representation.

class EmotionSerializer(TaggitSerializer,HyperlinkedModelSerializer):

    tags = TagListSerializerField()

    class Meta:
        model = Emotion
        fields = ('id','text', 'temperature', 'index','date_measured','tags','whisker_low','whisker_high')
        pandas_index = ['date_measured']
        pandas_scatter_coord = ['temperature']
        pandas_scatter_header = ['text']
