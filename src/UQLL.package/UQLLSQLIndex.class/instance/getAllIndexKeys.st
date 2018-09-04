sql accessing
getAllIndexKeys
	^ (self privateSqlExecute: ('SELECT {1} FROM {2};' format: {self indexColumn . name}))
		collect: [ :gasciro | gasciro at: 1 ]