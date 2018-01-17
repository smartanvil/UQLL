message send
extract: aCollection
	^ self
		sendTo: (self receiverFor: aCollection)
		valueWithArguments: aCollection