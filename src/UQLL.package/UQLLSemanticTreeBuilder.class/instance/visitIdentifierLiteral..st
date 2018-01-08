visiting
visitIdentifierLiteral: anEQLIdentifierLiteralNode
	^ (anEQLIdentifierLiteralNode value acceptVisitor: self) asScopePath