resolving
greaterEquals: aValue left: constantValueIsOnTheLeftOfOperation
	| op |
	op := #>=.
	^ constantValueIsOnTheLeftOfOperation
		ifTrue: [ self getIndexKeysForLeft: op than: aValue ]
		ifFalse: [ self getIndexKeysForRight: op than: aValue ]