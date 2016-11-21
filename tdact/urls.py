"""tdact URL Configuration

The `urlpatterns` list routes URLs to views. For more information please see:
    https://docs.djangoproject.com/en/1.10/topics/http/urls/
Examples:
Function views
    1. Add an import:  from my_app import views
    2. Add a URL to urlpatterns:  url(r'^$', views.home, name='home')
Class-based views
    1. Add an import:  from other_app.views import Home
    2. Add a URL to urlpatterns:  url(r'^$', Home.as_view(), name='home')
Including another URLconf
    1. Import the include() function: from django.conf.urls import url, include
    2. Add a URL to urlpatterns:  url(r'^blog/', include('blog.urls'))
"""
from django.contrib import admin
from django.conf.urls import include, url
from django.conf.urls.static import static
from django.conf import settings
from django.views.generic import RedirectView
from django.views.generic import TemplateView
import django.template.loader
from rest_framework import routers

from custom.emotion.views import EmotionViewSet
from custom.emotion.views import EmotionView
from custom.emotion.views import emotion_view
from custom.graphs.views import graphs_view
from custom.users.views import UserViewSet
from custom.users.views import StateViewSet
from custom.users.views import ProfileViewSet

from rest_framework import routers
# Serializers define the API representation.

# Routers provide an easy way of automatically determining the URL conf.
router = routers.DefaultRouter()
router.register(r'users', UserViewSet)
router.register(r'emotions', EmotionViewSet)
router.register(r'states', StateViewSet)
router.register(r'profiles', ProfileViewSet)

urlpatterns = [
    url(r'^rest/', include(router.urls)),
    url(r'^admin/', admin.site.urls),
    url(r'^grappelli/', include('grappelli.urls')),
    url(r'^django-rq/', include('django_rq.urls')),
    url(r'^api-auth/', include('rest_framework.urls', namespace='rest_framework')),
    url(r'^accounts_api/', include('registration_api.urls')),
    url(r'^auth/', include('rest_framework_social_oauth2.urls')),
    url(r'^emotionsdata/$',emotion_view),
    url(r'^graphs/$',graphs_view),
    url('', include('social.apps.django_app.urls', namespace='social')),
]