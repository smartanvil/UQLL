building
// aCollection
	self assert: aCollection size = 1.
	^ UQLLMessageSend new
		receiver: self;
		selector: aCollection first;
		yourself