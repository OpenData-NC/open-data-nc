Open Data NC
============

Public records index for North Carolina.

.. image::
   https://api.travis-ci.org/openrural/open-data-nc.png?branch=master
   :alt: Build Status
   :target: https://travis-ci.org/openrural/open-data-nc

Development Introduction
------------------------

Below you will find basic setup and deployment instructions for the opendata
project. To begin you should have the following applications installed on your
local development system:

- Python >= 2.6 (2.7 recommended)
- `pip >= 1.1 <http://www.pip-installer.org/>`_
- `virtualenv >= 1.7 <http://www.virtualenv.org/>`_
- `virtualenvwrapper >= 3.0 <http://pypi.python.org/pypi/virtualenvwrapper>`_
- Postgres >= 8.4 (9.1 recommended)
- git >= 1.7

The deployment uses SSH with agent forwarding so you'll need to enable agent
forwarding if it is not already by adding ``ForwardAgent yes`` to your SSH config.


Getting Started
------------------------

To setup your local environment you should create a virtualenv and install the
necessary requirements::

    mkvirtualenv --distribute open-data-nc
    $VIRTUAL_ENV/bin/pip install -r $PWD/requirements/dev.txt

Then create a local settings file and set your ``DJANGO_SETTINGS_MODULE`` to use it::

    cp opendata/settings/local.example.py opendata/settings/local.py
    echo "export DJANGO_SETTINGS_MODULE=opendata.settings.local" >> $VIRTUAL_ENV/bin/postactivate
    echo "unset DJANGO_SETTINGS_MODULE" >> $VIRTUAL_ENV/bin/postdeactivate

Exit the virtualenv and reactivate it to activate the settings just changed::

    deactivate
    workon open-data-nc


Create the Postgres database and load initial data::

    createdb -E UTF-8 opendata
    psql opendata < dev.sql


You should now be able to run the development server::

    python manage.py runserver

Solr Install & Configuration
-----------------------------

open-nc.org utilizes `Solr <http://lucene.apache.org/solr/>`_  for the search
backend. In order to utilize search locally, you will need to install and configure
Solr::

    scripts/solr-install.sh

This will install Solr in the root of the repository. To run Solr::

    scripts/solr-run.sh

If you make changes to the `Haystack <http://haystacksearch.org/>`_ indices after
you ran the solr-install.sh script, you will need to rebuild the Solr schema.
Due to an existing Haystack `issue <https://github.com/toastdriven/django-haystack/pull/706>`_, there
is a helper script to do this as well::

    scripts/solr-rebuild-schema.sh

After running the script, you will need to restart Solr.

Lastly, you will need to build the initial search index::

    python manage.py rebuild_index


Initial NC Data
------------------------

The repo comes with a small database for local development.


Deployment
------------------------

You can deploy changes to a particular environment with
the ``deploy`` command. This takes an optional branch name to deploy. If the branch
is not given, it will use the default branch defined for this environment in
``env.branch``::

    fab staging deploy
    fab staging deploy:new-feature

New requirements or South migrations are detected by parsing the VCS changes and
will be installed/run automatically.

Running the tests
-----------------

You can run the tests via::

    python manage.py test requests catalog suggestions
