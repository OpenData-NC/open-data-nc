from django import forms


class SearchForm(forms.Form):
    text = forms.CharField(required=False)


class SuggestionForm(forms.Form):
    text = forms.CharField(widget=forms.Textarea(), max_length=255,
                           label="My Nomination")
