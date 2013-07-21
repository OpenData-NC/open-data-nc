from django.conf.urls import patterns, url
from haystack.query import SearchQuerySet

from catalog.views import ResourceCreate, ResearchSearchView
from catalog.forms import ResourceSearchForm


FACETS = (
    'cities',
    'counties',
    'data_types',
    'categories',
)

sqs = SearchQuerySet()
for facet in FACETS:
    sqs = sqs.facet(facet)


urlpatterns = patterns('',
    url(r'^$', ResearchSearchView(form_class=ResourceSearchForm,
                                  searchqueryset=sqs),
                                  name='catalog_search'),
    url(r'^create/$', ResourceCreate.as_view(), name='resource_create'),
)
