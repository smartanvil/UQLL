accessing
exists: aScopePath
	[ self get: aScopePath.
	^ true ]
		on: Error
		do: [ ^ false ]