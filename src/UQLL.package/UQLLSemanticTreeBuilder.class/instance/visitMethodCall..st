visiting
visitMethodCall: anEQLMethodCallNode
	| receiver msgsends chain |
	msgsends := (anEQLMethodCallNode members collect: [ :m | m acceptVisitor: self ]) , {(anEQLMethodCallNode selector acceptVisitor: self)}.
	chain := msgsends allButFirst
		inject:
			(UQLLMessageSendCall new
				receiver: (anEQLMethodCallNode value acceptVisitor: self);
				selector: msgsends first;
				arguments: {  }
				yourself)
		into: [ :prev :each | 
			UQLLMessageSendCall new
				receiver: prev;
				selector: each;
				arguments: {  }
				yourself ].
	chain arguments: (anEQLMethodCallNode arguments acceptVisitor: self).
	^ chain