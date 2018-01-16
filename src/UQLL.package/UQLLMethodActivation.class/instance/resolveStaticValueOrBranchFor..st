as yet unclassified
resolveStaticValueOrBranchFor: aUQLLResultStream
	^ self needsBinding not
		ifTrue: [ self value ]
		ifFalse: [ (arguments anySatisfy: [ :a | a needsBinding ])
				ifTrue: [ self assert: aUQLLResultStream size = 1.
					(aUQLLResultStream at: 1) value all ]
				ifFalse: [ self ] ]