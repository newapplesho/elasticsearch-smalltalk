baselines
baseline11: spec
	<version: '1.1-baseline'>
	spec
		for: #common
		do: [ 
			spec blessing: #baseline.
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
								repository: 'http://smalltalkhub.com/mc/PharoExtras/JSON/main' ]. ]