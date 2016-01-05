accessing
messageJsonContent
	"self content at: 'created' put: self created.
	self content at: 'modified' put: self modified."

	^ self content asJsonString