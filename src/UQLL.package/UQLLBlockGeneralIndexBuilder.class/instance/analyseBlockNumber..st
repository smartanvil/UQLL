source-gathering
analyseBlockNumber: aBlockNumber
	| block |
	block := self connection eth getBlockByNumber: aBlockNumber full: true.
	indexes do: [ :i | i register: block ]