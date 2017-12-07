visiting
visitFrom: aUQLLFrom
	| Collections indexes |
	Collections := aUQLLFrom datasources collect: [ :d | d acceptVisitor: self ].
	indexes := [ Collections collect: [ :b | b value all readStream ] ].
	^ (UQLLResultStream on: Collections)
		index: indexes;
		yourself