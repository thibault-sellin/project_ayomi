from django.http import HttpResponse
from django.shortcuts import render
from django.contrib.auth.models import User


def change_mail(request):
    print("here")
    if request.method == 'POST':
        name = request.POST['name']
        email = request.POST['email']
        user = User.objects.get(username=name)
        user.email = email
        user.save()

    return render(request, 'home.html')

