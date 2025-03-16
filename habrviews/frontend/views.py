import requests
from django.shortcuts import render

def api_view(request):
    api_url = "http://127.0.0.1:5000/api/"
    response = requests.get(api_url)
    print(response)
    data = response.json()
    print(data)
    
    return render(request, "frontend/index.html", {"data": data})
