visiting
visitStringLiteral: anEQLStringLiteralNode
	| withoutQuotes withQuotes |
	withQuotes := anEQLStringLiteralNode value value.
	self assert: (withQuotes at: withQuotes size) = $'.
	self assert: (withQuotes at: 1) = $'.
	withoutQuotes := withQuotes copyFrom: 2 to: withQuotes size - 1.
	^ withoutQuotes