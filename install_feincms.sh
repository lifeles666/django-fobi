#pip install -r examples/requirements.txt --allow-all-external --allow-unverified django-admin-tools
pip install -r examples/requirements.txt
pip install -r examples/requirements_feincms.txt
python setup.py install
mkdir -p examples/logs examples/db examples/media examples/media/static examples/media/fobi_plugins/content_image
mkdir -p examples/media/fobi_plugins/file
python examples/simple/manage.py collectstatic --noinput --settings=settings_foundation5_theme_feincms --traceback -v 3
python examples/simple/manage.py syncdb --noinput --settings=settings_foundation5_theme_feincms --traceback -v 3
python examples/simple/manage.py migrate --noinput --settings=settings_foundation5_theme_feincms --traceback -v 3
python examples/simple/manage.py fobi_create_test_data --settings=settings_foundation5_theme_feincms --traceback -v 3
