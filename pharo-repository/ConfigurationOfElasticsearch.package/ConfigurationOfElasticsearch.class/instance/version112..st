versions
version112: spec
	<version: '1.1.2' imports: #('1.1-baseline')>
	spec
		for: #common
		do: [ 
			spec blessing: #stable.
			spec author: 'ShoYoshida'.
			spec
				project: 'ZincHTTPComponents' with: #stable;
				project: 'JSON' with: #stable.
			spec
				baseline: 'Elasticsearch' with: [ spec repository:'github://newapplesho/elasticsearch-smalltalk:v1.1.2/pharo-repository' ];
				import: 'Elasticsearch']