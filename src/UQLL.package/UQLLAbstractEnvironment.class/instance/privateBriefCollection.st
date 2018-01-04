as yet unclassified
privateBriefCollection
	^ (names associations select: [ :a | a value isUQLLCollection ])
		inject: OrderedCollection new
		into: [ :col :each | 
			each value isDictionary
				ifTrue: [ col addAll: (each value keys collect: [ :k | (each key , '.' , k) asSymbol ]) ]
				ifFalse: [ col add: each key ].
			col ]