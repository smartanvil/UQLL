visiting
visitMethodCall: aUQLLMethodCall
	| method |
	method := UQLLMessageSend new
		receiver: (aUQLLMethodCall receiver  acceptVisitor: self);
		selector: (aUQLLMethodCall selector acceptVisitor: self);
		arguments: (aUQLLMethodCall arguments collect: [ :a | a acceptVisitor: self ]);
		yourself.
	^ method needsBinding
		ifTrue: [ method ]
		ifFalse: [ method value ]