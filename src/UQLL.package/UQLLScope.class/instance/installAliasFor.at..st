accessing
installAliasFor: anObjectPath at: aScopePath
	^ (self get: aScopePath parent) privateAt: aScopePath basename put: (self get: anObjectPath)