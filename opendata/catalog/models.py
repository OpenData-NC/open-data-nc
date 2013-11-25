import math
import os

from django.conf import settings
from django.contrib.auth.models import User
from django.core.urlresolvers import reverse
from django.db import models
from django.template.defaultfilters import slugify

from djangoratings.fields import RatingField

from opendata.fields_info import FIELDS, HELP
from .managers import ImageManager


class City(models.Model):
    name = models.CharField(max_length=50)

    class Meta(object):
        verbose_name_plural = 'Cities'
        ordering = ("name", )

    def __unicode__(self):
        return self.name


class County(models.Model):
    name = models.CharField(max_length=50)
    cities = models.ManyToManyField(City, related_name='counties', null=True, blank=True)

    class Meta(object):
        verbose_name_plural = 'Counties'
        ordering = ("name", )

    def __unicode__(self):
        return self.name


class Category(models.Model):
    name = models.CharField(max_length=150)

    class Meta(object):
        verbose_name_plural = 'Categories'

    def __unicode__(self):
        return self.name


class Division(models.Model):
    name = models.CharField(max_length=255)

    class Meta:
        ordering = ('name', )

    def __unicode__(self):
        return self.name


class Department(models.Model):
    TYPES = (('state', 'State'), ('county', 'County'), ('city', 'City'))
    name = models.CharField(max_length=255)
    type = models.CharField(max_length=40, choices=TYPES, default='state')
    divisions = models.ManyToManyField(Division, blank=True, null=True)

    def __unicode__(self):
        return self.name

    class Meta:
        ordering = ('name', )


class DataType(models.Model):
    name = models.CharField(max_length=50)

    def __unicode__(self):
        return self.name


class UrlType(models.Model):
    url_type = models.CharField(max_length=50)
    
    def __unicode__(self):
        return '%s' % self.url_type
    
    class Meta: 
        ordering = ['url_type']


class UpdateFrequency(models.Model):
    update_frequency = models.CharField(max_length=50)
    
    def __unicode__(self):
        return '%s' % self.update_frequency
    
    class Meta: 
        ordering = ['update_frequency']


class CoordSystem(models.Model):
    name = models.CharField(max_length=255)
    description = models.TextField()
    EPSG_code = models.IntegerField(blank=True, help_text="Official EPSG code, numbers only")
    
    def __unicode__(self):
        return '%s, %s' % (self.EPSG_code, self.name)
        
    class Meta: 
        ordering = ['EPSG_code']
        verbose_name = 'Coordinate system'


class Resource(models.Model):

    AGENCY_TYPES = (
        ('state', 'Statewide'),
        ('county', 'County Agency'),
        ('city', 'City/town Agency'),
    )

    # Basic Info
    name = models.CharField(u'Title', max_length=255, help_text=HELP['title'])
    slug = models.SlugField(editable=False, unique=True)
    short_description = models.CharField(u'Brief description', max_length=255,
                                         help_text=HELP['short_description'])
    description = models.TextField(u'Long description', help_text=HELP['description'])
    department = models.ForeignKey(Department, help_text=HELP['agency_name'])
    division = models.ForeignKey(Division, blank=True, null=True,
                                help_text=HELP['agency_division'])
    agency_type = models.CharField(choices=AGENCY_TYPES, max_length=16,
                                   help_text=HELP['agency_type'])
    cities = models.ManyToManyField(City, blank=True, null=True)
    counties = models.ManyToManyField(County, blank=True, null=True)
    usage = models.TextField(u'Relevance', help_text=HELP['relevance'],
                             editable=False)
    newest_record = models.DateField(blank=True, null=True)
    oldest_record = models.DateField(blank=True, null=True)

    updates = models.ForeignKey(UpdateFrequency, null=True, blank=True,
                                help_text=HELP['update_frequency'],
                                )
    categories = models.ManyToManyField(Category, related_name="resources",
                                        blank=True, null=True)
    keywords = models.CommaSeparatedIntegerField(max_length=255, blank=True,
                                                 verbose_name=FIELDS['keywords'],
                                                 help_text=HELP['keywords'])
    data_types = models.ManyToManyField(DataType, blank=True, null=True)

    # More Info
    contact_name = models.CharField(max_length=255, blank=True)
    contact_phone = models.CharField(max_length=50, blank=True)
    contact_email = models.CharField(max_length=255, blank=True)
    contact_url = models.CharField(max_length=255, blank=True)

    area_of_interest = models.CharField(max_length=255, blank=True)
    is_published = models.BooleanField(default=True, verbose_name="Public")

    created_by = models.ForeignKey(User, related_name='created_by')
    last_updated_by = models.ForeignKey(User, related_name='updated_by')
    created = models.DateTimeField()
    last_updated = models.DateTimeField(auto_now=True)
    metadata_contact = models.CharField(max_length=255, blank=True)
    metadata_notes = models.TextField(blank=True)
    coord_sys = models.ManyToManyField(CoordSystem, blank=True, null=True,
                                       verbose_name="Coordinate system")

    rating = RatingField(range=5, can_change_vote=True)

    data_formats = models.CharField(max_length=255, blank=True, editable=False)
    proj_coord_sys = models.CharField(max_length=255, blank=True, verbose_name="Coordinate system")

    # CSW specific properties 
    wkt_geometry = models.TextField(blank=True)
    csw_typename = models.CharField(max_length=200, default="csw:Record")
    csw_schema = models.CharField(max_length=200, default="http://www.opengis.net/cat/csw/2.0.2")
    csw_mdsource = models.CharField(max_length=100, default="local")
    csw_xml = models.TextField(blank=True)
    csw_anytext = models.TextField(blank=True)

    # No longer used fields
    release_date = models.DateField(blank=True, null=True,
                                    help_text=HELP['last_updated'],
                                    editable=False)
    time_period = models.CharField(max_length=50, blank=True)
    update_frequency = models.CharField(max_length=255, blank=True,
                                        help_text=HELP['update_frequency'],
                                        editable=False)

    class Meta:
        ordering = ("-last_updated", )

    def get_first_image(self):
        images = self.urlimage_set.all()
        if images.count() == 0:
            return None
        return images[0]

    def get_images(self):
        images = self.urlimage_set.all()
        if images.count() == 0:
            return None
        return images

    def get_absolute_url(self):
        return reverse('catalog_resource_detail', kwargs={'slug': self.slug})

    def get_rating(self):
        """Return instance rating as an intiger"""
        return math.floor(self.rating.get_rating())

    def __unicode__(self):
        return u'%s' % self.name

    def save(self, *args, **kwargs):
        """Sets slug for resource."""
        if not self.id:
            self.slug = slugify(self.name)
        super(Resource, self).save(*args, **kwargs)


class Url(models.Model):
    url = models.CharField(max_length=255)
    url_label = models.CharField(max_length=255)
    url_type = models.ForeignKey(UrlType)
    resource = models.ForeignKey(Resource)

    def __unicode__(self):
        return '%s - %s - %s' % (self.url_label, self.url_type, self.url)


class UrlImage(models.Model):
    def get_image_path(instance, filename):
        fsplit = filename.split('.')
        extra = 1
        id = instance.resource.id
        test_path = os.path.join(settings.MEDIA_ROOT, 'url_images', str(instance.id), fsplit[0] + '_' + str(extra) + '.' + fsplit[1])
        while os.path.exists(test_path):
            extra += 1
            test_path = os.path.join(settings.MEDIA_ROOT, 'url_images', str(instance.id), fsplit[0] + '_' + str(extra) + '.' + fsplit[1])
        path = os.path.join('url_images', str(id), fsplit[0] + '_' + str(extra) + '.' + fsplit[1])
        return path

    resource = models.ForeignKey(Resource)
    image = models.ImageField(upload_to=get_image_path,
        help_text="The site will resize this master image as necessary for page display")
    title = models.CharField(max_length=255, help_text="For image alt tags",
        blank=True)
    source = models.CharField(max_length=255, blank=True,
        help_text="Source location or person who created the image")
    source_url = models.CharField(max_length=255, blank=True)
    objects = ImageManager()

    def __unicode__(self):
        return self.image


def gen_website_url():
    return "fix-me"
