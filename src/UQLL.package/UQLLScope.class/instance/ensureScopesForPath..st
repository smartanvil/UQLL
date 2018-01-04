accessing
ensureScopesForPath: aScopePath
	^ aScopePath
		inject: self
		into: [ :object :part | 
			object
				privateGet: part
				ifAbsentInstall: [ UQLLScope new
						parent: object;
						yourself ] ]