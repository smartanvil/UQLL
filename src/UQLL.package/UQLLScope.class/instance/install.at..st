accessing
install: anObject at: aScopePath
	^ (self get: aScopePath parent) privateAt: aScopePath basename put: anObject 