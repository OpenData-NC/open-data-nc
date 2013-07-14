from django.contrib.auth.decorators import login_required
from django.utils.decorators import method_decorator
from django.views.generic import (CreateView, DeleteView, DetailView, ListView,
                                  UpdateView, RedirectView)
from django.views.generic.detail import SingleObjectMixin

from catalog.models import Resource


class LoginRequiredMixin(object):

    @method_decorator(login_required)
    def dispatch(self, *args, **kwargs):
        return super(LoginRequiredMixin, self).dispatch(*args, **kwargs)


class ResourceCreate(LoginRequiredMixin, CreateView):
    model = Resource
    # form_class = ProjectCreateEditForm
