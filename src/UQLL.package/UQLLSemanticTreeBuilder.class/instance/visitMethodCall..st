visiting
visitMethodCall: anEQLMethodCallNode
	| receiver |
	anEQLMethodCallNode members isEmpty
		ifTrue: [ receiver := EQLMemberAccessNode new.
			receiver value: anEQLMethodCallNode value.
			receiver members: anEQLMethodCallNode members.
			anEQLMethodCallNode members: OrderedCollection new.
			anEQLMethodCallNode value: receiver ].
	^ UQLLMessageSendCall new
		receiver: (anEQLMethodCallNode value acceptVisitor: self);
		selector: (anEQLMethodCallNode selector acceptVisitor: self);
		arguments: (anEQLMethodCallNode arguments acceptVisitor: self);
		yourself