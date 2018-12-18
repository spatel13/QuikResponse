from django.http import HttpResponseRedirect
from django.views import View
from django.shortcuts import render
import requests

# Create your views here.
class OpChiefHomeView(View):
    template_name = 'opchief/home.html'

    def get(self, request):
        response = requests.get("http://localhost:5000/api/request")
        json = response.json()
        data = []
        for item in json:
            incoming = []
            keys = list(item.keys())
            for i in keys:
                try:
                    for moKeys in list(item[i].keys()):
                        incoming.append(item[i][moKeys])
                except Exception as e:
                    incoming.append(item[i])
            data.append(list(incoming))

        response = requests.get("http://localhost:5000/api/mission")
        json = response.json()
        missions = []
        for mission in json:
            incoming = []
            keys = list(mission.keys())
            for i in keys:
                try:
                    for moKeys in list(mission[i].keys()):
                        incoming.append(mission[i][moKeys])
                except Exception as e:
                    incoming.append(mission[i])
            missions.append(list(incoming))

        return render(request, self.template_name, {'requests': data, "missions": missions})

    def post(self, request):
        pass
