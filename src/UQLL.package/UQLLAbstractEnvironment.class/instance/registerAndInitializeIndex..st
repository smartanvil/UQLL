as yet unclassified
registerAndInitializeIndex: anUQLLUniqueIndex
	self install: anUQLLUniqueIndex name asSymbol at: anUQLLUniqueIndex name asScopePath.
	anUQLLUniqueIndex initializeWith: self