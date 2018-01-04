private
privateUninstall: aToken
	^ names
		at: aToken asSymbol
		ifPresent: [ names removeKey: aToken asSymbol ]
		ifAbsent: [ UQLLError
				signal: 'The name <<1>> does not refer to any existing object '
				format: {aToken asSymbol} ]