baselines
baseline: spec
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
				package: 'ElasticSearch-Core' with: [ spec requires: #('ZincHTTPComponents' 'JSON') ];
				package: 'ElasticSearch-Tests' with: [ spec requires: #('ElasticSearch-Core') ].]