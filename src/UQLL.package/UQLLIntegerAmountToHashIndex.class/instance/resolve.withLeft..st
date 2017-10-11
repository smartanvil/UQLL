as yet unclassified
resolve: anOperation withLeft: anInteger
	^ self perform: anOperation with: (self binarySearchValueInterval: anInteger)