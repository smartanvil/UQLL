initialization
installTimestampIndex
	self registerIndex: (UQLLNamedIndex named: #BlockStampToBlockHash on: FileLocator indexFolder / 'block-stamp.fl')