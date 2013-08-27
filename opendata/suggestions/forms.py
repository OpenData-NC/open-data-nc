from django import forms
from selectable.forms import AutoCompleteSelectField
from selectable.forms import AutoCompleteSelectWidget

from opendata.catalog.lookups import CityLookup, CountyLookup
from .models import Suggestion


class SuggestUrlForm(forms.Form):
    url = forms.URLField()


class SuggestionCreateForm(forms.ModelForm):
    county = AutoCompleteSelectField(
        lookup_class=CountyLookup,
        required=False,
        widget=AutoCompleteSelectWidget(
            lookup_class=CountyLookup,
            attrs={"class": "suggestions-hidden suggestions-county"},
        )
    )
    city = AutoCompleteSelectField(
        lookup_class=CityLookup,
        required=False,
        widget=AutoCompleteSelectWidget(
            lookup_class=CityLookup,
            attrs={"class": "suggestions-hidden suggestions-city"},
        )
    )

    class Meta:
        model = Suggestion

    class Media:
        js = (
            "suggestions/js/form.js",
        )
