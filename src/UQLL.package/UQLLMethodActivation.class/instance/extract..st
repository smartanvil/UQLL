as yet unclassified
extract: aCollection
	^ self
		sendTo: (self receiverFor: aCollection)
		valueWithArguments: aCollection