as yet unclassified
getCollectionNamed: aName
	^ [ aName fetchValueFromNestedDictionary: namedCollections ]
		on: KeyNotFound
		do: [ :e | Error signal: ' Collection  ' , aName printString , ' does not exist ' ]