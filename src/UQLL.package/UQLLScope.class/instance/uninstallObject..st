accessing
uninstallObject: aScopePath
	^ (self get: aScopePath parent) privateUninstallObject: aScopePath basename 