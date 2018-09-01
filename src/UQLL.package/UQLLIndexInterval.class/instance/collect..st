collection
collect: aBlockClosure
	| exit |
	exit := Array new: self size +1.
	from to: to by: step do: [ : val | exit at: val put: (aBlockClosure value: val) ].
	^ exit