initialization
initializeWith: anIndexProvider
	super initialize.
	index := anIndexProvider indexInstanceFor: self tag.
	self tagIndex