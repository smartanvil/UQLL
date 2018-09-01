source-gathering
analyseBlockNumber: aBlockNumber
	| block |
	block := self session eth getBlockByNumber: aBlockNumber full: true.
	indexes do: [ :i | i register: block ]