as yet unclassified
saveIndex: anIndex
	^ FLSerializer serialize: anIndex on: filename asFileReference writeStream 