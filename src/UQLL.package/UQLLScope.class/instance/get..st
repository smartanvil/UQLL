accessing
get: aScopePath
	^ [ aScopePath
		ifNil: [ self ]
		ifNotNil: [ aScopePath asScopePath inject: self into: [ :object :part | object privateGet: part ] ] ]
		on: Error
		do: [ UQLLError signal: 'Object {1} does not exists. ' format: {aScopePath} ]