from django.core.urlresolvers import reverse_lazy
from django.views.generic import TemplateView, CreateView

from opendata.mixins import LoginRequiredMixin
from .forms import SuggestUrlForm, SuggestionCreateForm
from .models import Suggestion


class SuggestPageView(TemplateView):
    template_name = "suggestions/suggest.html"

    def get_context_data(self, **kwargs):
        context = super(SuggestPageView, self).get_context_data()
        form = SuggestUrlForm()
        context.update({"form": form})
        return context


class SuggestCreateView(CreateView):
    model = Suggestion
    form_class = SuggestionCreateForm
    success_url = reverse_lazy('home')

    # def get_initial(self):
    #     initial = super(SuggestCreateView, self).get_initial()
    #     url = self.request.GET.get('url', '')
    #     initial.update({'url': url})
    #     return initial