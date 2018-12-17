from django.http import HttpResponseRedirect
from django.views import View
from django.shortcuts import render
from .forms import LoginForm

# Create your views here.
class LoginView(View):
    form_class = LoginForm
    template_name = 'authenticate/login.html'
    initial = {}

    def get(self, request):
        form = self.form_class(initial=self.initial)
        return render(request, self.template_name, {'form': form})

    def post(self, request):
        form = self.form_class(request.POST)
        if form.is_valid():
            return HttpResponseRedirect('/home')
        return render(request, self.template_name, {'form': form})
