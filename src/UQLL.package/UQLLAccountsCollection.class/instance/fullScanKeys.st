resolveingIds
fullScanKeys
	| source keys |
	keys := OrderedCollection new.
	source := environment get: #transactions.
	source all
		do: [ :k | 
			| tx |
			tx := source at: k.
			tx fromAddress ifNotNil: [ keys add: tx fromAddress ].
			tx toAddress ifNotNil: [ keys add: tx toAddress ] ].
	^ keys asSet asOrderedCollection 