visiting
visitFunctionCall: aUQLLFunctionCall
	| method |
	method := UQLLMethodActivation new
		receiver: UQLLRunningEnvironmentHolder value functions;
		selector: (aUQLLFunctionCall selector acceptVisitor: self);
		arguments: (aUQLLFunctionCall arguments collect: [ :a | a acceptVisitor: self ]);
		yourself.
	^ method needsBinding
		ifTrue: [ method ]
		ifFalse: [ method value ]