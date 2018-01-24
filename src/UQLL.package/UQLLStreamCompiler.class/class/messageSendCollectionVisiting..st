creating
messageSendCollectionVisiting: anUQLLSelect
	" This is here to ensure that there is not any kind of shared context with pointers to the previous stream compiler. "

	^ [ (anUQLLSelect acceptVisitor: UQLLStreamCompiler new) upToEnd ]