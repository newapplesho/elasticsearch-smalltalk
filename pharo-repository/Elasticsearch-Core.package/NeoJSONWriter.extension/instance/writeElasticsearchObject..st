*Elasticsearch-Core
writeElasticsearchObject: anEsObject
	"For migrating from Json Package"
	| str |
	str := ESJsonWriteStream on: writeStream writer: self.
	anEsObject jsonWriteOn: str