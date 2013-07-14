from django.conf.urls import patterns, url

from catalog.views import ResourceCreate


urlpatterns = patterns('',
    url(r'^create/$', ResourceCreate.as_view(), name='resource_create'),
)
