import datetime
from haystack import indexes

from catalog.models import Resource


class ResourceIndex(indexes.SearchIndex, indexes.Indexable):
    text = indexes.NgramField(document=True, use_template=True)
    name = indexes.CharField(model_attr='name')
    data_types = indexes.MultiValueField(faceted=True)

    def get_model(self):
        return Resource

    def index_queryset(self, using=None):
        return self.get_model().objects.all()

    def prepare_data_types(self, obj):
        return [type_.name for type_ in obj.data_types.all()]
