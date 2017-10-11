initialization
initializeFrom: aFrom to: aTo
	from := aFrom.
	to := aTo.
	indexes := OrderedCollection new.
	blocks := OrderedCollection new: aTo - aFrom.
	aTo - aFrom timesRepeat: [ blocks add: UQLLNonInstalled instance ]