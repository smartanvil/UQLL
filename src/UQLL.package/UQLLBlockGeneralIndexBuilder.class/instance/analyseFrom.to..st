source-gathering
analyseFrom: aStamp to: otherStamp
	from := UQLLBinarySearch binarySearchFindClosestTo: aStamp.
	to := UQLLBinarySearch binarySearchFindClosestTo: otherStamp.
	self initializeFrom: from to: to. 
	self analyse. 
	