accessing
get: aScopePath
	^ aScopePath
		ifNil: [ self ]
		ifNotNil: [ aScopePath inject: self into: [ :object :part | object privateGet: part ] ]