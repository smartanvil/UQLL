private
privateGet: aToken
	^ names
		at: aToken asSymbol
		ifAbsent: [ UQLLError signal: 'Unable to lookup name {1}' format: {aToken asSymbol} ]