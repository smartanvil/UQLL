installing
installCollection: aCollection as: aName
	(aCollection respondsTo: #environment:)
		ifTrue: [ aCollection environment: self ].
	self install: aCollection at: aName asScopePath