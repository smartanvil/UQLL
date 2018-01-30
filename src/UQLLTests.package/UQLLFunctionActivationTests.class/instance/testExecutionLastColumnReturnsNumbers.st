result-tests
testExecutionLastColumnReturnsNumbers
	| results column |
	results := stream next: 4.
	column := results collect: [ :a | a last ].
	column allSatisfy: [ :c | c isKindOf: SmallInteger  ].
