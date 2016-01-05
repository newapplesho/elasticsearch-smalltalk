The term query finds documents that contain the exact term specified in the inverted index.

Examples:
index := ESIndex indexNamed: 'stock'. 
search := ESSearch new; index: index.
query := ESTermQuery new field:'user'; query:'Kimchy'.
search addQuery: query.
result := search search.