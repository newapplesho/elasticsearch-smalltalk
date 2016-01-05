versions
version10: spec
	<version: '1.0' imports: #('1.0-baseline')>
	spec
		for: #common
		do: [ 
			spec blessing: #stable.
			spec description: 'initial  version'.
			spec author: 'PaulDeBruicker'.
			spec timestamp: '4/24/2013 10:51'.
			spec
				project: 'ZincHTTPComponents' with: #stable;
				project: 'JSON' with: #stable.
			spec
				package: 'ElasticSearch-Core' with: 'ElasticSearch-Core-PaulDeBruicker.14';
				package: 'ElasticSearch-Tests' with: 'ElasticSearch-Tests-pad.7' ]