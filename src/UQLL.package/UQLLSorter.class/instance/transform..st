transforming
transform: aCollection
	^ aCollection collect: [ :each | expression extract: each ]