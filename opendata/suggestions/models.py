from django.db import models

from opendata.requests.models import Category, City, County


HELP = {
    'title': 'What is this data set called by the agency that created it?',
    'short_description': 'If this data set were a photo, what would it be its caption',
    'description': 'Using complete sentecnes, write a brief paragraph '
                   'describing the contents of the data set. What key '
                   'information and fields does it include?',
    'agency_name': 'Examples: Raleigh Police Department; Chapel Hill-Carrboro '
                   'City Schools; N.C. Department of Health and Human Services',
    'agency_division': 'Examples: Division of Water Quality; Tax Collector, '
                       'Registrar of Deeds',
    'agency_type': '',
    'county': '',
    'url': '',
    'city': 'Which city or town',
    'last_updated': 'NOTE: some data sets may have multiple versions on a '
                    'CD-ROM and a version on the agency\'s web server. Or an '
                    'internal version and a different version that is publicly '
                    'available on a website. We\'re just looking for the date '
                    'of the most recent record in the particular version that '
                    'you\'re describing.',
    'update_frequency': '',
    'keywords': 'Example: sidewalks, inspections, traffic tickets'

}
FIELDS = {
    'url': 'What is the URL web address of the best version of this data set '
           'available on any government website? If the data is not available '
           'on any government websites, please type "None',
    'data_format': 'In what format if this data?',
    'agency_name': 'What is the name of the agency that created the record?',
    'agency_division': 'What is the name of the division or department that '
                       'created the record?',
    'agency_type': 'Is this a statewide data set created by the N.C state '
                   'government? Or was it created by a county government? '
                   'Or a city or town government?',
    'county': 'Which county',
    'city': 'Which city or town',
    'last_updated': 'What (if any) is the date of the most recent record in '
                    'this particular version of the data set? (mm/dd/yyy)',
    'update_frequency': 'How often has this version of the data set been '
                        'updated in the last 12 months?',
    'categories': 'Pick one or more categories for this data set.',
    'keywords': 'Type any other keyword that you\'d use to describe the data. '
                'Use commas to separate each key word or phrase.',

}


class Suggestion(models.Model):
    FORMATS = (
        ('xls', '.xls'),
        ('csv', '.csv'),
        ('rss', 'RSS'),
        ('json', 'JSON'),
        ('accb', '.accb or .mdb Microsoft Access file'),
        ('pdf', '.pdf'),
        ('doc', '.doc'),
        ('oracle', 'Oracle Database'),
        ('txt', '.txt'),
        ('shp', '.shp'),
        ('web', 'Web page [HTML, ASP, etc]'),
    )
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
    title = models.CharField(max_length=255, help_text=HELP['title'])
    short_description = models.CharField(u'Brief description', max_length=255,
                                         help_text=HELP['short_description'])
    description = models.TextField(u'Long description', help_text=HELP['description'])
    url = models.CharField(verbose_name=FIELDS['url'], max_length=255,
                           help_text=HELP['url'])
    data_format = models.CharField(verbose_name=FIELDS['data_format'],
                                   max_length=100, choices=FORMATS)
    other_format = models.CharField(max_length=255, blank=True)
    agency_name = models.CharField(verbose_name=FIELDS['agency_name'],
                                   help_text=HELP['agency_name'], max_length=255)
    agency_division = models.CharField(max_length=255,
                                       verbose_name=FIELDS['agency_division'],
                                       help_text=HELP['agency_name'])
    agency_type = models.CharField(choices=AGENCY_TYPES, max_length=16,
                                   verbose_name=FIELDS['agency_type'],
                                   help_text=HELP['agency_type'])
    city = models.ForeignKey(City, verbose_name=FIELDS['city'], blank=True,
                             related_name='suggestions', null=True,)
    county = models.ForeignKey(County, related_name='suggestions', null=True,
                               blank=True, verbose_name=FIELDS['county'])
    last_updated = models.DateField(verbose_name=FIELDS['last_updated'],
                                    blank=True, null=True)
    update_frequency = models.CharField(choices=FREQUENCY_TYPES, max_length=16,
                                        verbose_name=FIELDS['update_frequency'],
                                        help_text=HELP['update_frequency'])
    categories = models.ManyToManyField(Category, related_name="suggestions",
                                        null=True, blank=True,
                                        verbose_name=FIELDS['categories'])
    keywords = models.CommaSeparatedIntegerField(max_length=255, blank=True,
                                                 verbose_name=FIELDS['keywords'],
                                                 help_text=HELP['keywords'])
    contact_name = models.CharField(max_length=255)
    phone_number = models.CharField(max_length=30)
    street_address = models.CharField(max_length=100)
    contact_city = models.CharField(u'City', max_length=50)
    zipcode = models.CharField(u'Zip Code', max_length=30)
    email_address = models.CharField(max_length=100)

    def __unicode__(self):
        return self.title