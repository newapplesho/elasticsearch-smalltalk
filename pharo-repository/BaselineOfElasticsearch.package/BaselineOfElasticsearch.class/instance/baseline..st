baselines
baseline: spec
	<baseline>
	spec
		for: #common
		do: [ 
			spec
				project: 'ZincHTTPComponents'
					with: [ 
							spec
								className: 'ConfigurationOfZincHTTPComponents';
								versionString: #stable;
								repository: 'http://mc.stfx.eu/ZincHTTPComponents' ].
			spec
				package: 'Elasticsearch-Core' with: [ spec requires: #('ZincHTTPComponents') ];
				package: 'Elasticsearch-Tests' with: [ spec requires: #('Elasticsearch-Core') ].]