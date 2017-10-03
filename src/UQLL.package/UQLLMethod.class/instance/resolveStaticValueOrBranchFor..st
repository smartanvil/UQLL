as yet unclassified
resolveStaticValueOrBranchFor: aUQLLResultStream
	| names |
	^ (self needsBinding not)
		ifTrue: [ self reduce ]
		ifFalse: [ names := {receiver}, arguments select: [ :n | n isFogName ].
			self assert: names size = 1.
			names first resolveStaticValueOrBranchFor: aUQLLResultStream ]