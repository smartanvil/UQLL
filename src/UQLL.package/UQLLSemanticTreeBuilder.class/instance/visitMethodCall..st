visiting
visitMethodCall: anEQLMethodCallNode
	| receiver |
	anEQLMethodCallNode members isEmpty
		ifFalse: [ 
			self halt. 
			receiver := anEQLMethodCallNode value acceptVisitor: self.
			"ATTACHE MEMBERS AFTER! "
			receiver value: anEQLMethodCallNode value.
			receiver members: anEQLMethodCallNode members.
			anEQLMethodCallNode members: OrderedCollection new.
			anEQLMethodCallNode value: receiver ].
	^ UQLLMessageSendCall new
		receiver: (anEQLMethodCallNode value acceptVisitor: self);
		selector: (anEQLMethodCallNode selector acceptVisitor: self);
		arguments: (anEQLMethodCallNode arguments acceptVisitor: self);
		yourself