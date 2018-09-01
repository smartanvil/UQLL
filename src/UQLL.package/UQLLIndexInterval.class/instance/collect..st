collection
collect: aBlockClosure
	| exit |
	exit := Array new: self size.
	from to: to by: step do: [ : val | exit at: val put: (aBlockClosure value: val) ].
	^ exit