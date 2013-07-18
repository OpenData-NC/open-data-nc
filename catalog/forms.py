from haystack.forms import FacetedSearchForm
from selectable.forms import AutoCompleteSelectField, AutoComboboxSelectWidget
from catalog.lookups import CityLookup


class ResourceSearchForm(FacetedSearchForm):

    # was playing around with autocomplete field
    # city = AutoCompleteSelectField(lookup_class=CityLookup, required=False,
    #                                widget=AutoComboboxSelectWidget)

    def search(self):
        if not self.is_valid():
            return self.no_query_found()

        sqs = self.searchqueryset.auto_query(self.cleaned_data['q'])

        if self.load_all:
            sqs = sqs.load_all()

        # We need to process each facet to ensure that the field name and the
        # value are quoted correctly and separately:
        for facet in self.selected_facets:
            if ":" not in facet:
                continue

            field, value = facet.split(":", 1)

            if value:
                sqs = sqs.narrow(u'%s:"%s"' % (field, sqs.query.clean(value)))

        return sqs
