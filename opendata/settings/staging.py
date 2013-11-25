from opendata.settings.base import *

DEBUG = False
TEMPLATE_DEBUG = DEBUG

SECRET_KEY = os.environ['SECRET_KEY']

DATABASES['default']['NAME'] = 'opendata_staging'

PUBLIC_ROOT = '/var/www/opendata-staging/public/'

STATIC_ROOT = os.path.join(PUBLIC_ROOT, 'static')

MEDIA_ROOT = os.path.join(PUBLIC_ROOT, 'media')

CACHES = {
    'default': {
        'BACKEND': 'django.core.cache.backends.memcached.MemcachedCache',
        'LOCATION': '127.0.0.1:11211',
    }
}

EMAIL_SUBJECT_PREFIX = '[Open Data NC Staging] '

COMPRESS_ENABLED = True

SESSION_COOKIE_SECURE = True

SESSION_COOKIE_HTTPONLY = True

ALLOWED_HOSTS = ('*',)

BROKER_URL = 'amqp://opendata:%s@127.0.0.1:5672/opendata_staging' % os.environ['BROKER_PASSWORD']

SITE_URL = "http//staging.open-nc.org"

HAYSTACK_SEARCH_RESULTS_PER_PAGE = 10

# Email Settings
EMAIL_HOST = 'email-smtp.us-east-1.amazonaws.com'
EMAIL_HOST_USER = os.environ['AMAZON_EMAIL_USER']
EMAIL_HOST_PASSWORD = os.environ['AMAZON_EMAIL_PASSWORD']
EMAIL_PORT = 587
EMAIL_USE_TLS = True

RECAPTCHA_PRIVATE_KEY = os.environ['RECAPTCHA_PRIVATE_KEY']
