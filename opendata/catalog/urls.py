from django.conf.urls import patterns, url

from opendata.search.views import search_listing
from .models import Resource
from .views import ResourceDetail, ResourceCreate, ResourceRedirectView


urlpatterns = patterns('',
    url(r'^$', search_listing, {'model': Resource}, name='catalog_search'),
    url(r'^create/$', ResourceCreate.as_view(), name='resource_create'),
    url(r'^(?P<slug>[-\w]+)/$', ResourceDetail.as_view(),
        name='catalog_resource_detail'),
    url(r'^(?P<slug>[-\w]+)/(?P<pk>[\d]+)/$', ResourceRedirectView.as_view(),
        name='catalog_resource_detail')
)
