accessing
next
	self atEnd
		ifTrue: [ ^ nil ].
	^ self nextIndex with: source source collect: [ :idx :src | src key -> (src value at: idx) ]