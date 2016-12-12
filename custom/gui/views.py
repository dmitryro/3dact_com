from django.shortcuts import render

def scramble_view(request):
    return render(request, 'scramble.html', {})

