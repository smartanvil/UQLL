examples
exampleMinimalSelect
	<example>
	| stream |
	stream := self 	query:	' 
		select instance 
		from  environments  as instance;
	'.
	stream upToEnd inspect