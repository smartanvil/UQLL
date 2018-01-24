examples
exampleMinimalUnionSelect
	<example>
	| stream |
	stream := self 	query:	' 
		(select instance 
		from instance in environments)
		union
		(select instance 
		from instance in environments);
	'.
	stream upToEnd inspect