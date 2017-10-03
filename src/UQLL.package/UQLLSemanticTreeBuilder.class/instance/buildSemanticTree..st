private
buildSemanticTree: aScript
	^ (UQLExpressionParser parseStream: aScript readStream) acceptVisitor: self.
