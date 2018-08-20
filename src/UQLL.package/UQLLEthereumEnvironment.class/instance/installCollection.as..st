installing
installCollection: aCollection as: aName
	aCollection isBlock
		ifFalse: [ aCollection connection: connection ].
	^ super installCollection: aCollection as: aName