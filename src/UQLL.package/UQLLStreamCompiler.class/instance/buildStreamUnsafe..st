as yet unclassified
buildStreamUnsafe: aCollection
	^ aCollection collect: [ :s | s acceptVisitor: self ]