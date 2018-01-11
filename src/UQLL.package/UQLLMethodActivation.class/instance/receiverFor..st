testing
receiverFor: aCollection
	^ receiver needsBinding
		ifTrue: [ receiver valueWithDictionaryArguments: aCollection asDictionary ]
		ifFalse: [ receiver ]