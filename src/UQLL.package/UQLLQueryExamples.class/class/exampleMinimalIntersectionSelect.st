examples
exampleMinimalIntersectionSelect
	<example>
	| stream |
	stream := self 	query:	' 
		(select instance 
		from instance in environments)
		intersect
		(select instance 
		from instance in environments);
	'.
	stream upToEnd inspect