accessing
finalize
	super finalize.
	pool ifNotNil: [ pool stop ].