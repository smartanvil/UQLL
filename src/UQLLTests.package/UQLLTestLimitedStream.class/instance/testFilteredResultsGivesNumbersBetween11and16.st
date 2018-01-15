initialization
testFilteredResultsGivesNumbersBetween11and16
	| values |
	values := stream upToEnd.

	self
		assert: ((values collect: [ :each | each first value ]) allSatisfy: [ :each | each isNumber and: [ each > 10 and: [ each <= 16 ] ] ])