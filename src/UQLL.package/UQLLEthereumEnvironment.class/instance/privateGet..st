private
privateGet: aToken
	aToken asSymbol = #name
		ifTrue: [ ^ self name ].
	^ super privateGet: aToken