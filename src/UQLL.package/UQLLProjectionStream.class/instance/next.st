as yet unclassified
next
	| val |
	val := source next.
	^ val ifNotNil: [ dataProjection collect: [ :d | d name -> (d extract: val) ] ]