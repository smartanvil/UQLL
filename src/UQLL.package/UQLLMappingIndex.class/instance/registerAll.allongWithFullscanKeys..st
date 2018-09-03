saving
registerAll: extractedData allongWithFullscanKeys: keys
	| values keysReader insert |
	" the unique index replaces the fullScan keys access, we don't really care about it"
	values := (extractedData readStream next: keys size) readStream.
	keysReader := keys readStream.
	[ values atEnd ]
		whileFalse: [ | chunk |
			chunk := ((keysReader next: 1000) reject: [ :e | e isNil ])
				with: ((values next: 1000) reject: [ :e | e isNil ])
				collect: [ :a :b | '(''' , a asString , ''',' , b asUnixTime asString , ')' ].
			insert := 'INSERT INTO {1} (key, value) values {2};'
				format:
					{name asSymbol.
					(',' , String lf join: chunk)}.
			self privateSqlExecute: insert ]