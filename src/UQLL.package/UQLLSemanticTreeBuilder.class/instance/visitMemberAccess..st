as yet unclassified
visitMemberAccess: anEQLMemberAccessNode
	| property accesses |
	property := anEQLMemberAccessNode value acceptVisitor: self.
	accesses := anEQLMemberAccessNode members collect: [ :m | m acceptVisitor: self ].
	^ UQLLNameAccess new
		value: property;
		accesses: accesses;
		yourself