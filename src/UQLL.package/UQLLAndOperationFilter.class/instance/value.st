printing
value
	self assert: self needsBinding not.
	^ left value and: [ right value ]