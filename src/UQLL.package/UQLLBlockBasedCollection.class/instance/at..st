accessing
at: aBlockIdOrHash
	^ self transform: (self connection findBlockByHash: aBlockIdOrHash asAddress full: true)