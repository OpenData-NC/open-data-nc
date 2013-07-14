from django.conf import settings
from django.conf.urls import patterns, include, url
from django.conf.urls.static import static
from django.contrib import admin

from opendata.views import Home


admin.autodiscover()


urlpatterns = patterns('',
    url(r'^admin/', include(admin.site.urls)),
    url(r'^$', Home.as_view(), name='home'),
    url(r'^catalog/', include("catalog.urls")),
) + static(settings.MEDIA_URL, document_root=settings.MEDIA_ROOT)
