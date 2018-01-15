initialization
testStreamGivesNumbersInBetween10and20
	| values |
	values := stream upToEnd.
	self assert: values size equals: 11.
	self
		assert:
			((values collect: [ :each | each first value ])
				allSatisfy: [ :each | each isNumber and: [ each >= 10 and: [ each <= 20 ] ] ])