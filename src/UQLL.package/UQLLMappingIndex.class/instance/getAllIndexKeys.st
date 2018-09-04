sql accessing
getAllIndexKeys
	^ (self privateSqlExecute: ('SELECT keys FROM {1};' format: {name}))
		collect: [ :gasciro | gasciro at: 1 ]