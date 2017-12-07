initialization
initialize
	super initialize.
	namedCollections := Dictionary new.
	indexRegistry := OrderedCollection new.
	indexTags := Dictionary new.
	connections := OrderedCollection new