from django.db import models
from django.contrib.auth.models import User

from djangoratings.fields import RatingField
from catalog.models import Resource


class Suggestion(models.Model):
    text = models.CharField(max_length=255)
    suggested_by = models.ForeignKey(User, related_name="suggested_by")
    suggested_date = models.DateTimeField(auto_now_add=True)
    last_modified_date = models.DateTimeField(auto_now=True)
    completed = models.BooleanField(default=False)
    
    rating = RatingField(range=1, allow_delete=True, can_change_vote=True)

    resources = models.ManyToManyField(Resource,
                                       related_name="resources_added",
                                       null=True, blank=True)

    def __unicode__(self):
        return self.text

