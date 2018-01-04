accessing
uninstall: aScopePath
	^ (self get: aScopePath parent) privateUninstall: aScopePath basename 