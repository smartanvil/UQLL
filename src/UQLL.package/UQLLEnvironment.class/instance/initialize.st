initialization
initialize
	super initialize.
	namedbuffers := Dictionary new.
	indexRegistry := OrderedCollection new.
	indexTags := Dictionary new.
	connections := OrderedCollection new