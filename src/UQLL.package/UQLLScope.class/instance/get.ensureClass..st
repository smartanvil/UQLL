accessing
get: aScopePath ensureClass: aClass
	| object |
	object := self get: aScopePath.
	(object isKindOf: aClass)
		ifFalse: [ 
			UQLLError
				signal: 'Expected to fetch {1}, had {2}. '
				format:
					{aClass name.
					object class name} ].
	^ object