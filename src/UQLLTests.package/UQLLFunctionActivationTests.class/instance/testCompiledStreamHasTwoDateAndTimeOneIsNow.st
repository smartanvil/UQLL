compiled-stream-test
testCompiledStreamHasTwoDateAndTimeOneIsNow
	| date now |
	now := DateAndTime now.
	date := (((stream instVarNamed: #dataProjection) select: [ :s | s loader isKindOf: DateAndTime ]) at: 1) loader.
	self assert: (date asSeconds >= now asSeconds and: [ date asSeconds <= DateAndTime now asSeconds])