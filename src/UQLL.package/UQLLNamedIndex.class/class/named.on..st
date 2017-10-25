instance creation
named: aName on: aFileReference
	^ self new
		name: aName asSymbol;
		file: aFileReference;
		yourself