boundaries accessing
between: aStamp and: otherStamp
	fromStamp := aStamp.
	toStamp := otherStamp.
	fromBlockNumber := UQLLBinarySearch binarySearchFindClosestTo: fromStamp.
	toBlockNumber := UQLLBinarySearch binarySearchFindClosestTo: toStamp.
	currentBlockNumber := fromBlockNumber