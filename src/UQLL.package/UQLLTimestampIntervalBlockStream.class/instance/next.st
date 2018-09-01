stream
next
	| block |
	block := self scheme findBlockByNumber: self currentBlockNumber full: true.
	self updateCurrentBlockNumber.
	^ block.
