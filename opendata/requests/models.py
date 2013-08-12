from django.db import models
from django.contrib.auth.models import User

from djangoratings.fields import RatingField
from opendata.catalog.models import Resource, City, County, Category


HELP = {
    'title': "What is this data set called by the agency that created it?",
    'description': "Using complete sentences, write a brief paragraph "
                   "describing the contents of the data set. What key "
                   "information and fields does it include?",
    'relevance': "Why is this data interesting and important?",
    'url': "What is the URL web address of the best version of this data "
           "set available today on a government website? If the data is not "
           "available on any government website, please type 'None'",
    'agency_name': 'Examples: Raleigh Police Department; Chapel Hill-Carrboro '
                   'City Schools; N.C. Department of Health and Human Services',
    'agency_division': 'Examples: Division of Water Quality; Tax Collector; '
                       'Registrar of Deeds',
    'other': 'Only needed if none of the categories above was selected.'
}

FIELD_NAMES = {
    'title': 'What is this data set called by the agency that created it?',
    'description': 'Using complete sentences, write a brief paragraph '
                   'describing the contents of the data set. What key '
                   'information and fields does it include?',
    'relevance': 'Why is this data interesting and important?',
    'url': 'What is the URL web address of the best version of this data '
           'set available today on a government website? If the data is '
           'not available on any government website, please type "None"',
    'agency_type': 'Is this a statewide data set created by the N.C. '
                   'state government? Or was it created by a county '
                   'government? Or a city or town government?',
    'agancy_name': 'What is the name of the agency that created the data set?',
    'agency_division': 'What is the name of the division or department that '
                       'created the data set?',
    'update_frequency': 'How often do you think the agency updates the records '
                        'in the data set?',
    'categories': 'Pick one or more categories for this data set.',
    'agency_contact': 'If you know, who at the government agency is the best '
                      'person to contact with questions about this data set?',
}


class Request(models.Model):
    AGENCY_TYPES = (
        ('state', 'Statewide'),
        ('county', 'County Agency'),
        ('city', 'City/town Agency'),
    )
    FREQUENCY_TYPES = (
        ('daily', 'At least once a day'),
        ('weekly', 'At least once a week'),
        ('monthly', 'At least once a month'),
        ('yearly', 'At least once a year'),
        ('never', "It is not updated after it's created."),
    )

    date = models.DateTimeField(auto_now_add=True)
    date_last_modified = models.DateTimeField(auto_now=True)
    suggested_by = models.ForeignKey(User, related_name="suggested_by")
    title = models.CharField(max_length=255, help_text=HELP['title'])
    description = models.TextField(help_text=HELP['relevance'])
    relevance = models.TextField(help_text=HELP['description'])
    url = models.URLField(help_text=HELP['url'])
    agency_type = models.CharField(choices=AGENCY_TYPES,
                                   max_length=16)
    city = models.ForeignKey(City, related_name='requests', null=True,
                             blank=True)
    county = models.ForeignKey(County, related_name='requests', null=True,
                               blank=True)
    agency_name = models.CharField(max_length=255)
    agency_division = models.CharField(max_length=255)
    update_frequency = models.CharField(choices=FREQUENCY_TYPES,
                                       max_length=16)
    agency_contact = models.CharField(max_length=255, blank=True)
    categories = models.ManyToManyField(Category,
                                        related_name="requests",
                                        null=True, blank=True)
    other_category = models.CharField(u'Other category', max_length=255, blank=True,
                                      help_text=HELP['other'])
    resources = models.ManyToManyField(Resource,
                                       related_name="requests",
                                       null=True, blank=True)
    rating = RatingField(range=1, allow_delete=True, can_change_vote=True)

    def __unicode__(self):
        return self.title
