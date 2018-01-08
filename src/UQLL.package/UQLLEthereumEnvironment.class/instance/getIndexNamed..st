accessing - index
getIndexNamed: aName
	^ (self get: aName asScopePath ensure: #isUQLLIndex) index 