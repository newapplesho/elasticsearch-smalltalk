# elasticsearch-smalltalk
[Elasticsearch](https://www.elastic.co/products/elasticsearch) for Pharo Smalltalk.

This project was migrated from SqueakSource3 repository: [http://ss3.gemtalksystems.com/ss/Elasticsearch.html](http://ss3.gemtalksystems.com/ss/Elasticsearch.html)


# Installation

```smalltalk
Metacello new
    baseline: 'Elasticsearch';
    repository: 'github://newapplesho/elasticsearch-smalltalk:v1.1.6/pharo-repository';
    load.
```

or


```smalltalk
Gofer new
    url: 'http://ss3.gemtalksystems.com/ss/Elasticsearch';
    package: 'ConfigurationOfElasticsearch';
	load.
(Smalltalk at: #ConfigurationOfElasticsearch) load.
```

# Version

Supported Smalltalk Versions Pharo Smalltalk 4.0

| Elasticsearch Version | elasticsearch-smalltalk  |
| --------------------- | ------------------------ |
| >= 2.0                | v1.1.6                   |
| >= 1.5, < 2.0         | v1.1.4                   |

# How to use
http://www.slideshare.net/newapplesho/elasticsearch-for-pharo-smalltalk
