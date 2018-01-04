arithmetic
parent
	^ self size > 1
		ifTrue: [ (self class new: self size - 1)
				copyFrom: self;
				yourself ]
		ifFalse: [ nil ]