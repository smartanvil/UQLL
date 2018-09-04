sql accessing
getIndexKeysForRight: anOperation than: aValue
	| query |
	query := 'SELECT key FROM {1} WHERE value {2} {3};'
		format:
			{name.
			anOperation.
			(self transformToSqlStringAccordingToValueType: aValue)}.
	^ (self privateSqlExecute: query) collect: [ :gasciro | gasciro at: 1 ]