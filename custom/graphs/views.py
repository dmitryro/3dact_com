from django.shortcuts import render
from rest_framework.permissions import AllowAny
from rest_framework.decorators import api_view
from rest_framework.decorators import permission_classes
# Create your views here.
@permission_classes((AllowAny, ))
def graphs_view(request):
    return render(request, 'plots.html', {'error':'expired'})

