initialization
testFilterGivesNumbersInBetween1and30
	| values |
	values := stream upToEnd.
	self assert: values size equals: 30.
	self
		assert:
			((values collect: [ :each | each first value ])
				allSatisfy: [ :each | each isNumber and: [ each >= 1 and: [ each <= 30 ] ] ])