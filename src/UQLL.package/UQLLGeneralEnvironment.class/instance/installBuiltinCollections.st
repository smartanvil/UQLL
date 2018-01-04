installing
installBuiltinCollections
	super installBuiltinCollections.
	self installCollection: self privateEnvironmentCollection as: #environments