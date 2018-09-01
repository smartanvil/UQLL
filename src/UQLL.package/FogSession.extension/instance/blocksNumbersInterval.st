*UQLL
blocksNumbersInterval
	^ UQLLIndexInterval new
		from: 1;
		to: self findLastBlock number;
		yourself