private
resolve: anOperation withLeft: aDateAndTime
	^ self perform: anOperation with: (self binarySearchFindClosestTo: aDateAndTime)