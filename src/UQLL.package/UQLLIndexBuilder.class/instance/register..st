registry
register: anObject
	| entry |
	entry := self transformObjectIntoIndexEntry: anObject.
	entry isCollection
		ifTrue: [ entry do: [ :e | index register: e ] ]
		ifFalse: [ index register: entry ]