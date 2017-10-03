visiting
visitFrom: aUQLLFrom
	| buffers indexes |
	buffers := aUQLLFrom datasources collect: [ :d | d acceptVisitor: self ].
	indexes := [ buffers collect: [ :b | b value all readStream ] ].
	^ (UQLLResultStream on: buffers)
		index: indexes;
		yourself