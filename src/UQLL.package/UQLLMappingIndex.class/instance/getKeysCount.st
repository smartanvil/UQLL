sql accessing
getKeysCount
	^ (self privateSqlExecute: ('SELECT count(1) FROM {1};' format: {name})) first at: 1