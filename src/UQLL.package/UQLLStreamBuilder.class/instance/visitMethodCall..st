visiting
visitMethodCall: aUQLLMethodCall
	| method |
	method := UQLLMethod new
		receiver: (aUQLLMethodCall receiver  acceptVisitor: self);
		selector: (aUQLLMethodCall selector acceptVisitor: self);
		arguments: (aUQLLMethodCall arguments collect: [ :a | a acceptVisitor: self ]);
		yourself.
	^ method needsBinding
		ifTrue: [ method ]
		ifFalse: [ method reduce ]