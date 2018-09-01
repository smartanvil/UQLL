accessing
at: aBlockIdOrHash
	^ self transform: (self session findBlockByHashOrNumber: aBlockIdOrHash full: true)