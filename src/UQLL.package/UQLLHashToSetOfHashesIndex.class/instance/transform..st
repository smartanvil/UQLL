accessing
transform: aDictionary
	^ (aDictionary associations collect: [ :a | (a key asBKHexa: 40) -> a value ])
		asDictionary