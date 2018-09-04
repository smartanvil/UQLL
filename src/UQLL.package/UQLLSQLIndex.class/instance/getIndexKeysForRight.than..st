sql accessing
getIndexKeysForRight: anOperation than: aValue
	| query |
	query := 'SELECT {1} FROM {2} WHERE {5} {4} {3};'
		format:
			{self indexColumn.
			name.
			(self transformToSqlStringAccordingToValueType: aValue).
			anOperation.
			self valueColumn}.
	^ (self privateSqlExecute: query) collect: [ :gasciro | gasciro at: 1 ]