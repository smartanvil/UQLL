install - indexes
installTimestampIndex
	self installIndex: (UQLLNamedIndex named: #BlockStampToBlockHash on: FileLocator indexFolder / 'block-stamp.fl')