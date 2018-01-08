accessing
install: anObject at: aScopePath
	^ (self get: aScopePath parent) privateAt: aScopePath asScopePath basename put: anObject