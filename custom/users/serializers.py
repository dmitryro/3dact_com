from django.contrib.auth.models import User

from rest_framework.serializers import HyperlinkedModelSerializer
from taggit_serializer.serializers import (TagListSerializerField,
                                           TaggitSerializer)


from models import State
from models import Profile

# Serializers define the API representation.
class UserSerializer(HyperlinkedModelSerializer):
    class Meta:
        model = User
        fields = ('url', 'username', 'email', 'is_staff')


class StateSerializer(HyperlinkedModelSerializer):
    class Meta:
        model = State
        fields = ('id','state', 'code',)

class ProfileSerializer(HyperlinkedModelSerializer):
    class Meta:
        model = Profile
        fields = ('id','username', 'first_name','last_name',)

