examples
exampleMinimalWhere
	<example>
	| stream |
	stream := self 	query:	' 
		select instance.name()
		from environments as instance
		where instance.name() = ''eth'';
	'.
	stream upToEnd inspect