installing
installCollection: aCollection as: aName
	aCollection isBlock
		ifFalse: [ aCollection scheme: scheme ].
	^ super installCollection: aCollection as: aName