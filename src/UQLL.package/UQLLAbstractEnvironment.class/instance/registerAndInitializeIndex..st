as yet unclassified
registerAndInitializeIndex: anUQLLUniqueIndex
	self install: anUQLLUniqueIndex at: anUQLLUniqueIndex name asScopePath.
	anUQLLUniqueIndex initializeWith: self