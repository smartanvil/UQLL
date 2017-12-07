initialization
registerIndex: aNamedIndex
	indexRegistry
		detect: [ :i | i name = aNamedIndex name ]
		ifFound: [ self error: 'There is already an index named' , aNamedIndex name ]
		ifNone: [ indexRegistry add: aNamedIndex ]