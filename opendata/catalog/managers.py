import random

from django.db import models


class ImageManager(models.Manager):

    def select_random(self, sample_size=1):
        """Selects a random sample queryset of size 'size'"""
        length = self.count()
        if length < sample_size:
            sample_size = length
        return random.sample(self.all(), sample_size)