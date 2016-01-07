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
								repository: 'http://mc.stfx.eu/ZincHTTPComponents' ];
				project: 'JSON'
					with: [ 
							spec
								className: 'ConfigurationOfJSON';
								versionString: #stable;
								repository: 'http://smalltalkhub.com/mc/PharoExtras/JSON/main' ].
			spec
				package: 'Elasticsearch-Core' with: [ spec requires: #('ZincHTTPComponents' 'JSON') ];
				package: 'Elasticsearch-Tests' with: [ spec requires: #('Elasticsearch-Core') ].]