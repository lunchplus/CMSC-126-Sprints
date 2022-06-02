
from django import forms

class PriceForm(forms.Form):
    views = forms.IntegerField(min_value=12)