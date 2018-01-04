building
composeSource: aStream withAstNode: aUQLLSemanticNode
	^ aUQLLSemanticNode
		ifNil: [ aStream ]
		ifNotNil: [ (aUQLLSemanticNode acceptVisitor: self) source: aStream ]