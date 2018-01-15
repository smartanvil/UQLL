as yet unclassified
sort: aCollection
	^ aCollection asSortedCollection: [ :a :b | (expression extract: a) > (expression extract: b) ]