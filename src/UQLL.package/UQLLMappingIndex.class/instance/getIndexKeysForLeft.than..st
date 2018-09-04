sql accessing
getIndexKeysForLeft: anOperation than: aValue
	| query |
	query := 'SELECT key FROM {1} WHERE {3} {2} value;'
		format:
			{name.
			anOperation.
			(self transformToSqlStringAccordingToValueType: aValue)}.
	^ (self privateSqlExecute: query) collect: [ :gasciro | gasciro at: 1 ]