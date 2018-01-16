as yet unclassified
next
	| ret |
	[ ret := source next ]
		doWhileFalse: [ ret ifNil: [ ^ nil ].
			(ret allSatisfy: [ :f | f value isNotNil ])
				ifFalse: [ ^ ret ].
			filter valueWithDictionaryArguments: ret ].
	^ ret