from django import forms

from .models import Resource


class ResourceAdminForm(forms.ModelForm):

    class Meta:
        model = Resource