private
binarySearchFindClosestTo: aStamp
	| analysing lower upper current stamp |
	[ stamp := aStamp asUnixTime ]
		on: MessageNotUnderstood
		do: [ :e | UQLLError notValidTimeStamp: aStamp ].
	analysing := self size.
	lower := 2.
	upper := analysing.
	[ lower < upper ]
		whileTrue: [ current := lower + ((upper - lower) // 2).
			analysing := current - 1.
			self assert: (( data at: analysing) at: 1) <= (( data at: current) at: 1).
			((( data at: analysing) at: 1) <= stamp and: [ stamp <= ( data at: current) at: 1 ])
				ifTrue: [ ^ current ].
			stamp > (( data at: current) at: 1)
				ifTrue: [ lower = current
						ifTrue: [ ^ current ].
					lower := current ]
				ifFalse: [ upper := current ] ].
	self error: 'No value found'