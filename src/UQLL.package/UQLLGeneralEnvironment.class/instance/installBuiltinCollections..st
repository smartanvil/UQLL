installing
installBuiltinCollections: aCollectionFactory
	super installBuiltinCollections: aCollectionFactory.
	self installCollection: self privateEnvironmentCollection as: #environments