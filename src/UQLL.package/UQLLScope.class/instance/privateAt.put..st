private
privateAt: aToken put: aValue
	^ names
		at: aToken asSymbol
		ifPresent: [ UQLLError
				signal: 'The name <<{1}>> is already referencing an object '
				format: {aToken asSymbol} ]
		ifAbsent: [ names at: aToken asSymbol put: aValue.
			aValue isScope
				ifTrue: [ aValue parent: self ] ]