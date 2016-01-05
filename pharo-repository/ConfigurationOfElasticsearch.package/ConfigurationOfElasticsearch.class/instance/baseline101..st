baselines
baseline101: spec
	<version: '1.0.1-baseline'>
	spec
		for: #common
		do: [ 
			spec blessing: #baseline.
			spec repository: 'http://ss3.gemtalksystems.com/ss/Elasticsearch'.
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
				package: 'ElasticSearch-Tests' with: [ spec requires: #('ElasticSearch-Core') ].
			spec
				group: 'default' with: #('Core');
				group: 'Core' with: #('ElasticSearch-Core');
				group: 'Tests' with: #('ElasticSearch-Tests') ]