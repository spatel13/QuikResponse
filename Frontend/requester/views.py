from django.http import HttpResponseRedirect
from django.views import View
from django.shortcuts import render
from .forms import RequesterForm

# Create your views here.
class RequesterView(View):
    form_class = RequesterForm
    template_name = 'requester/form.html'
    initial = {}

    def get(self, request):
        form = self.form_class(initial=self.initial)
        return render(request, self.template_name, {'form': form})

    def post(self, request):
        form = self.form_class(request.POST)
        if form.is_valid():
            return render(request, self.template_name, {'form': form})
        return render(request, self.template_name, {'form': form})
