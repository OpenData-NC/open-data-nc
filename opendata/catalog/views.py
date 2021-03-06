from django.conf import settings
from django.views.generic import CreateView, DetailView, RedirectView
from opendata.mixins import LoginRequiredMixin
from .models import Resource


class ResourceCreate(LoginRequiredMixin, CreateView):
    model = Resource


class ResourceRedirectView(RedirectView):
    def get_redirect_url(self, **kwargs):
        resource = Resource.objects.get(pk=self.kwargs['pk'])
        return resource.get_absolute_url()


class ResourceDetail(DetailView):
    model = Resource

    def get_context_data(self, **kwargs):
        context = super(ResourceDetail, self).get_context_data(**kwargs)
        resource = context['object']
        average_rating = resource.get_rating()
        site_url = getattr(settings, 'SITE_URL', 'http://localhost')
        context.update({'site_url': site_url, 'average_rating': average_rating})
        return context
