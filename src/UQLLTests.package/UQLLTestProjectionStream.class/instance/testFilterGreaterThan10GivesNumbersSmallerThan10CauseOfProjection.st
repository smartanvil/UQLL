initialization
testFilterGreaterThan10GivesNumbersSmallerThan10CauseOfProjection
	| values |
	values := stream upToEnd.
	self assert: values size equals: 10.
	self assert: ((values collect: [ :each | each first value ]) allSatisfy: [ :each | each isNumber and: [ each < 10 ] ])