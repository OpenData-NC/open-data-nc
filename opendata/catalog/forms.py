from django import forms
from django.contrib.admin import site
from django.contrib.admin import widgets
from django.template.defaultfilters import slugify

from secure_input.fields import MiniWYSIWYGField

from .models import (Category, DataType, Department, Division, Resource,
                     UpdateFrequency)
from opendata.fields_info import FIELDS


class ResourceAdminForm(forms.ModelForm):
    description = MiniWYSIWYGField()
    division = forms.ModelChoiceField(label=FIELDS['agency_division'],
                                      widget=widgets.ForeignKeyRawIdWidget(
                                          Resource._meta.get_field('division').rel,
                                          site
                                      ),
                                      queryset=Division.objects, required=False)
    categories = forms.ModelMultipleChoiceField(queryset=Category.objects,
                                        widget=widgets.FilteredSelectMultiple(
                                            "categories", False)
                                        )
    data_types = forms.ModelMultipleChoiceField(queryset=DataType.objects,
                                        widget=widgets.FilteredSelectMultiple(
                                            "Data types", False)
                                        )
    department = forms.ModelChoiceField(label=FIELDS['agency_name'],
                                        widget=widgets.ForeignKeyRawIdWidget(
                                            Resource._meta.get_field('department').rel,
                                            site
                                        ),
                                        queryset=Department.objects)
    agency_type = forms.ChoiceField(choices=Resource.AGENCY_TYPES,
                                    label=FIELDS['agency_type'])
    newest_record = forms.DateField(label=FIELDS['newest_updated'], required=False,
                                    widget=widgets.AdminDateWidget)
    oldest_record = forms.DateField(label=FIELDS['oldest_record'], required=False,
                                    widget=widgets.AdminDateWidget)
    updates = forms.ModelChoiceField(label=FIELDS['update_frequency'],
                                    queryset=UpdateFrequency.objects,
                                    required=False)

    def clean_name(self):
        name = self.cleaned_data['name']
        if not self.instance.pk:
            slug = slugify(name)
            resources = Resource.objects.filter(slug=slug)
            if resources:
                raise forms.ValidationError("Resource with this name already exists.")
        return name

    class Meta:
        model = Resource

    class Media:
        js = ("js/wysiwyg.js", )
