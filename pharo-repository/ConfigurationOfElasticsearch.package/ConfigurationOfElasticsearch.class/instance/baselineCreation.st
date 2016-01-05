scripts
baselineCreation
	MetacelloToolBox
		createBaseline: '1.0-baseline'
		for: 'Elasticsearch'
		repository: 'http://ss3.gemstone.com/ss/Elasticsearch'
		requiredProjects: #('ZincHTTPComponents')
		packages: #('ElasticSearch-Core' 'ElasticSearch-Tests')
		dependencies:
			{('ElasticSearch-Core' -> #('ZincHTTPComponents' 'JSON')).
			('ElasticSearch-Tests' -> #('ElasticSearch-Core' #-))}
		groups: {('default' -> #('ElasticSearch-Core'))}