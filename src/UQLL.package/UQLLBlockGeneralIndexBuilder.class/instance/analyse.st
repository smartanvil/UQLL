source-gathering
analyse
	TKTConfiguration runner poolMaxSize: 70.
	[ from to: to do: [ :id | [ self analyseBlockNumber: id ] schedule ].
	[ self inform: 'finished' ] schedule ] schedule