from django import forms

class RequesterForm(forms.Form):
    severityChoices = [("Jello", "Khaki"), ("Pink", "Pink"), ("Yellow", "Yellow"),
                        ("Indigo", "Indigo"), ("Fuscia", "Fuscia"), ("Teal", "Teal"),
                        ("Purple", "Purple")]

    details = forms.CharField(widget=forms.Textarea, required=True)
    address = forms.CharField(required=True)
    severity = forms.ChoiceField(choices=severityChoices, required=True)
