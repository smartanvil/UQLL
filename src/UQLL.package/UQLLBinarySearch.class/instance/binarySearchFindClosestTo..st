private
binarySearchFindClosestTo: aStamp
	| analysing lower upper current |
	analysing := self connection findLastBlock.
	lower := 0.
	upper := analysing number.
	[ lower < upper ]
		whileTrue: [ current := lower + ((upper - lower) // 2).
			analysing := self connection findBlockByNumber: current full: true.
			(analysing previous timestamp <= aStamp and: [ aStamp <= analysing timestamp ])
				ifTrue: [ ^ analysing number ].
			aStamp > analysing timestamp
				ifTrue: [ lower = current
						ifTrue: [ ^ analysing number ].
					lower := current ]
				ifFalse: [ upper := current ] ].
	self halt