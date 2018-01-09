printing
valueWithDictionaryArguments: aData
	^ self inject: aData asDictionary into: [ :obj :part | (obj privateGet: part asScopePath) value ]