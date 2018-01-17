initialization
testFilterGreaterThan10Gives10Results
	| values |
	values := stream upToEnd.
	self assert: values size equals: 10.
