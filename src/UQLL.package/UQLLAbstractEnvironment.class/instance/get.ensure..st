as yet unclassified
get: anUQLLScopePath ensure: aValuable
	| val |
	val := self get: anUQLLScopePath.
	self assert: (aValuable value: val).
	^ val