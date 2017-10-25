registry
registerGeneralEntry: anObject
	| entry |
	entry := self transformGeneralEntryIntoIndexEntry: anObject.
	entry isCollection
		ifTrue: [ entry do: [ :e | index register: e ] ]
		ifFalse: [ index register: entry ]