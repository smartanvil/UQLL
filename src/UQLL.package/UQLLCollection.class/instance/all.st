resolveingIds
all
	^ self hasUniqueIndex
		ifTrue: [ self uniqueIndex all ]
		ifFalse: [ self fullScanKeys ]