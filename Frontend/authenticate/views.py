from django.views import View
from django.shortcuts import render

# Create your views here.
class LoginView(View):
    template_name = 'base.html'
    
    def get(self, request):
        return render(request, self.template_name)

    def post(self, request):
        pass
