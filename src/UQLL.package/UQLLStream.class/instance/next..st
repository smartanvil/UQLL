accessing
next: anInteger
	| aCollection |
	aCollection := OrderedCollection new.
	anInteger timesRepeat: [ aCollection addLast: self next ].
	^ aCollection