private
path
	^ self parent ifNil: [ '/' asScopePath ] ifNotNil: [ self parent path / self parent nameFor: self ]