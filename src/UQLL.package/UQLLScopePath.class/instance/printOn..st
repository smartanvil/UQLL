arithmetic
printOn: aStream
	^ self
		do: [ :t | 
			aStream nextPutAll: '/'.
			t printOn: aStream ]