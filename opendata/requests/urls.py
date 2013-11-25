from django.conf.urls import patterns, url

from .views import add_request, list_requests, remove_vote, RequestDetailView, vote


urlpatterns = patterns('',
   url(r'^$', list_requests, name="request-list"),
   url(r'^create/$', add_request, name="request-create"),
   url(r'^(?P<pk>\d+)/$', RequestDetailView.as_view(), name="requests_request_detail"),
   url(r'^(?P<request_id>\d+)/vote/$', vote, name="request-vote"),
   url(r'^(?P<request_id>\d+)/unvote/$', remove_vote, name="request-remove-vote"),
)
