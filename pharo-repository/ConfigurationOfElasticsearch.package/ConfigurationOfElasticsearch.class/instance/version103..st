versions
version103: spec
	<version: '1.0.3' imports: #('1.0.1-baseline')>
	spec
		for: #common
		do: [ 
			spec blessing: #stable.
			spec author: 'ShoYoshida'.
			spec
				project: 'ZincHTTPComponents' with: #stable;
				project: 'JSON' with: #stable.
			spec
				package: 'ElasticSearch-Core' with: 'ElasticSearch-Core-MasashiUmezawa.24';
				package: 'ElasticSearch-Tests' with: 'ElasticSearch-Tests-ShoYoshida.9' ]