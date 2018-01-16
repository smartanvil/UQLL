printing
value
	self assert: self needsBinding not.
	^ left value or: [ right value ]