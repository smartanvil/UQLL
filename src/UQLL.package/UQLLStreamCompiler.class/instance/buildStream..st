as yet unclassified
buildStream: aCollection
	[ ^ aCollection collect: [ :s | s acceptVisitor: self ] ]
		on: Error
		do: [ :e | ^ {e messageText readStream} ]