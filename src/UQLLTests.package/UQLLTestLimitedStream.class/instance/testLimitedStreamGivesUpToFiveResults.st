initialization
testLimitedStreamGivesUpToFiveResults
	| values |
	values := stream upToEnd.
	self assert: values size equals: 5.