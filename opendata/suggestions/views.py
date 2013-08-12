from django.views.generic import TemplateView, CreateView

from .models import Suggestion


class SuggestPageView(TemplateView):
    template_name = "suggestions/index.html"


class SuggestCreateView(CreateView):
    model = Suggestion