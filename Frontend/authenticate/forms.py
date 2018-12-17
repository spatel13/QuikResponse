from django.forms import Form, EmailField, CharField, PasswordInput

class LoginForm(Form):
    email = EmailField(label="Email", required=True)
    password = CharField(label="Password", required=True, widget=PasswordInput)
