evaluating
value
	| leftValue rightValue |
	self assert: self needsBinding not.
	leftValue := left value.
	rightValue := right value.
	[ ^ leftValue perform: self operation withArguments: {rightValue} ]
		on: MessageNotUnderstood
		do: [ :e | UQLLError invalidOperation: self operation over: leftValue with: rightValue ]