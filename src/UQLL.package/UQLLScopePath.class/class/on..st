instance creation
on: aSymbol
	^ (self new: 1)
		at: 1 put: aSymbol asSymbol;
		yourself