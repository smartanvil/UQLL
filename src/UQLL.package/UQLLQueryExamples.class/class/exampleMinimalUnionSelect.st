examples
exampleMinimalUnionSelect
	<example>
	| stream |
	stream := self 	query:	' 
		(select instance 
		from environments as instance)
		union
		(select instance 
		from environments as instance);
	'.
	stream upToEnd inspect