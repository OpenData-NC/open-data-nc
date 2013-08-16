from django.contrib.admin import widgets
from django import forms
from django.contrib.admin import site

from .models import (Category, DataType, Department, Division, Resource,
                     UpdateFrequency)
from opendata.fields_info import FIELDS


class ResourceAdminForm(forms.ModelForm):
    division = forms.ModelChoiceField(label=FIELDS['agency_division'],
                                      widget=widgets.ForeignKeyRawIdWidget(
                                          Resource._meta.get_field('division').rel,
                                          site
                                      ),
                                      queryset=Division.objects, required=False)
    categories = forms.ModelChoiceField(queryset=Category.objects,
                                        widget=widgets.FilteredSelectMultiple(
                                            "categories", False)
                                        )
    data_types = forms.ModelChoiceField(queryset=DataType.objects,
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
    release_date = forms.DateField(label=FIELDS['last_updated'], required=False)
    updates = forms.ModelChoiceField(label=FIELDS['update_frequency'],
                                    queryset=UpdateFrequency.objects,
                                    required=False)

    class Meta:
        model = Resource