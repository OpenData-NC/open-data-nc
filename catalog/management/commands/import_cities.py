import csv
import requests
import StringIO

from django.core.management.base import BaseCommand
from catalog.models import City, County


class Command(BaseCommand):
    """Import city/county CSV file into database."""

    def handle(self, url, **options):
        response = requests.get(url)
        content = StringIO.StringIO(response.content)
        reader = csv.reader(content, delimiter=',')
        for city_name, county_name in reader:
            city, _ = City.objects.get_or_create(name=city_name)
            county, _ = County.objects.get_or_create(name=county_name)
            county.cities.add(city)
