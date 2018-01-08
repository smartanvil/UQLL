visiting
visitMemberAccess: anEQLMemberAccessNode
	| property accesses |
	property := anEQLMemberAccessNode value acceptVisitor: self.
	accesses := anEQLMemberAccessNode members collect: [ :m | m acceptVisitor: self ].
	^ property // accesses