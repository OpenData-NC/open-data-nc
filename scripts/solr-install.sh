if [ ! -d ./apache-solr-3.6.2 ]
then
    wget http://apache.mirrors.tds.net/lucene/solr/3.6.2/apache-solr-3.6.2.tgz
    tar xvzf apache-solr-3.6.2.tgz
    rm apache-solr-3.6.2.tgz
fi
if [ ! -d ./apache-solr-3.6.2/website ]
then
    cp -r ./apache-solr-3.6.2/example ./apache-solr-3.6.2/website/
fi
./scripts/solr-rebuild-schema.sh 
