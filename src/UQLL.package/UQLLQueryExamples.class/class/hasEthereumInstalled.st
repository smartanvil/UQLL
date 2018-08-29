examples-ethereum
hasEthereumInstalled
	| stream |
	stream := self 	query:	' 
		select instance 
		from environments as instance
		where instance.name = ''eth'';
	'.
	^ stream upToEnd size > 0