source-gathering
analyseBlockNumber: aBlockNumber
	| block |
	block := self connection eth getBlockByNumber: aBlockNumber full: true.
	indexes do: [ : i | i register: block ].
	"
	|tx txFrom txTo txInput size |
	tx := block at: #transactions.
	size := tx size.
	txFrom := Array new: size.
	txInput := Array new: size.
	txTo := Array new: size.
	1 to: size do: [ :i | 
		txFrom at: i put: ((tx at: i) at: #from) asBKNumber.
		txTo at: i put: ((tx at: i) at: #to) asBKNumber.
		txInput at: i put: ((tx at: i) at: #input) ].
	blocks
		at: aBlockNumber - from + 1
		put:
			{(block at: #hash) asBKNumber.
			(block at: #uncles) isNotEmpty.
			(block at: #nonce).
			(block at: #timestamp) asBKNumber.
			txFrom.
			txTo.
			txInput}"