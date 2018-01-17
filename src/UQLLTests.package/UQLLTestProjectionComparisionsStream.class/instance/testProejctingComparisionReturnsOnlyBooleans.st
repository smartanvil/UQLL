initialization
testProejctingComparisionReturnsOnlyBooleans
	| values |
	values := stream upToEnd.
	self assert: ((values collect: [ :each | each first value ]) allSatisfy: [ :each | each isKindOf: Boolean ])