printing
printOn: aStream
	^ self
		do: [ :t | 
			aStream nextPutAll: t asString; nextPutAll: '.' ]