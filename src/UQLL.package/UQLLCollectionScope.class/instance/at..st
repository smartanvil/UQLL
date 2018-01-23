accessing
at: aKey
	^ (self get: aKey asScopePath) ifNotNil: [ aKey ]