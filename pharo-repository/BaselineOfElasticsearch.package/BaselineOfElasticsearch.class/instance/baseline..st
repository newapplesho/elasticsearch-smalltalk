baselines
baseline: spec
	<baseline>
	spec
		for: #common
		do: [ 
			spec baseline: 'ZincHTTPComponents' with: [
				spec repository: 'github://svenvc/zinc:7f3502b082fbcd29e6f02f1aad2e46d00406ec3e/repository';
					loads: #('Core' 'SSO-OAuth1' 'SSO-OAuth2' 'WebSocket' 'Server-Sent-Events') ].
							
			spec baseline: 'NeoJSON' with: [ spec repository: 'github://svenvc/NeoJSON/repository' ].
							
			spec
				package: 'Elasticsearch-Core' with: [ spec requires: #('ZincHTTPComponents') ];
				package: 'Elasticsearch-Tests' with: [ spec requires: #('Elasticsearch-Core') ].]