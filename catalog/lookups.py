from selectable.base import ModelLookup
from selectable.registry import registry
from catalog.models import City


class CityLookup(ModelLookup):
    model = City
    search_fields = ('name__icontains', )


registry.register(CityLookup)
