initialization
testDescedentOrder
	| values sorted |
	values := stream upToEnd.
	values := values collect: [ :each | each first value ].
	sorted := values asSortedCollection: [ :a :b | a > b ].
	self assert: values asArray equals: sorted asArray