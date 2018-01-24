examples
exampleMinimalWhere
	<example>
	| stream |
	stream := self 	query:	' 
		select instance.name()
		from instance in environments
		where instance.name() = ''eth'';
	'.
	stream upToEnd inspect