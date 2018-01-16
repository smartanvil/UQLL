mergingg
mergeLeft: aLeft withRight: aRight
	self isSelectingOperation
		ifTrue: [ ^ aLeft mergeBySelecting: self operation with: aRight ].
	self isCollectingOperation
		ifTrue: [ ^ aLeft mergeByCollecting: self operation with: aRight ].
		UQLLError signal: 'unable to manage operation {1}' format: { self operation }