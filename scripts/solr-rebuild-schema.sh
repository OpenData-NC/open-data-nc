# https://github.com/toastdriven/django-haystack/pull/706
DIR="$( cd "$( dirname "${BASH_SOURCE[1]}" )" && pwd )"
schema=$DIR'/apache-solr-3.6.2/website/solr/conf/schema.xml'
python manage.py build_solr_schema --filename=$schema
sed -i '' 's/words=\"stopwords_en.txt\"/words=\"lang\/stopwords_en.txt\"/' $schema
sed -i '' 's/<field name=\"name\" type=\"text_en\"/<field name=\"name\" type=\"string\"/' $schema
