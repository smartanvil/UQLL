testing
needsBinding
	^ receiver needsBinding or: [ arguments anySatisfy: [ :a | a needsBinding ] ]