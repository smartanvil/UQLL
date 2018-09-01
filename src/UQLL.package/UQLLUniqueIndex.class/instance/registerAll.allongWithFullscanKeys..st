registering
registerAll: extractedData allongWithFullscanKeys: fullScanKeys
	| entries insert |
	" the unique index replaces the fullScan keys access, we don't really care about it"
	entries := extractedData readStream.
	[ entries atEnd ]
		whileFalse: [ insert := 'INSERT INTO {1} (index) values {2};'
				format:
					{name asSymbol.
					(',' , String lf join: ((entries next: 1000) reject: [ :e | e isNil ] thenCollect: [ :e | '(''' , e , ''')' ]))}.
			self privateSqlExecute: insert ]