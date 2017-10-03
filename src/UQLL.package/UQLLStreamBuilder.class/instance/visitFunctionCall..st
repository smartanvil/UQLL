visiting
visitFunctionCall: aUQLLFunctionCall
	| method |
	method := UQLLMethod new
		receiver: UQLLDynamicGlobals value functions;
		selector: (aUQLLFunctionCall selector acceptVisitor: self);
		arguments: (aUQLLFunctionCall arguments collect: [ :a | a acceptVisitor: self ]);
		yourself.
	^ method needsBinding
		ifTrue: [ method ]
		ifFalse: [ method reduce ]