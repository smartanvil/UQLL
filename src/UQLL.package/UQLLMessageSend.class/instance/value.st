evaluating
value
	| args |
	args := arguments collect: [ :a | a value ].
	self sendTo: self receiver valueWithArguments: args