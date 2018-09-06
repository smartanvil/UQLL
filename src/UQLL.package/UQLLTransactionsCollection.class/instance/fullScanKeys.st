initialization
fullScanKeys
	| blocks |
	blocks := environment get: #blocks.
	^ blocks all
		flatCollect: [ :id | (blocks at: id) transactionsHashes collect: [ :d | d at: #hash ] ]