examples-ethereum
exampleEthereumInstalled
	<example>
	| stream |
	stream := self 	query:	' 
		select instance 
		from instance in environments
		where instance.name = ''eth'';
	'.
	^ stream upToEnd size > 0