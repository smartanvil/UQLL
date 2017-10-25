initialization
indexInstanceFor: aClass
	^ indexRegistry detect: [ :i | i name = aClass ]