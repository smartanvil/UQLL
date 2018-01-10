result-tests
testExecutionReturns5TimesTheSameResultsInTheFirstThreeColumns
	| results column |
	results := stream next: 5.
	column := results collect: [ :a | a at: 1 ].
	column allButFirst allSatisfy: [ :a | a = column first ].
	column := results collect: [ :a | a at: 2 ].
	column allButFirst allSatisfy: [ :a | a = column first ].
	column := results collect: [ :a | a at: 3 ].
	column allButFirst allSatisfy: [ :a | a = column first ]