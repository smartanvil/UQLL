initialization
indexInstanceFor: aTag
	^ (indexes at: aTag)
		new;
		file: indexDirectory / aTag , '.idx.fl';
		yourself