from django import forms

class LoginForm(forms.Form):
    email = forms.EmailField(label="Email", required=True)
    password = forms.CharField(label="Password", required=True, widget=forms.PasswordInput)
