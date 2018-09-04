as yet unclassified
privateUninstallObject: aString 
	| obj | 
	obj := (self privateGet: aString).
	names keysAndValuesRemove: [ :k :v | v = obj ].