printing
valueWithDictionaryArguments: aCollection
	| argumentsToUse |
	^ self needsBinding
		ifTrue: [ argumentsToUse := arguments
				collect: [ :a | 
					a needsBinding
						ifTrue: [ a valueWithDictionaryArguments: aCollection ]
						ifFalse: [ a value ] ].
			self sendTo: (self receiverFor: aCollection) valueWithArguments: argumentsToUse ]
		ifFalse: [ self value ]