arithmetic
/ aSymbol
	^ aSymbol asSymbol == #'..'
		ifTrue: [ self error: 'Path navigation is not supported ' ]
		ifFalse: [ (self class new: self size + 1)
				copyFrom: self;
				at: self size + 1 put: aSymbol;
				yourself ]