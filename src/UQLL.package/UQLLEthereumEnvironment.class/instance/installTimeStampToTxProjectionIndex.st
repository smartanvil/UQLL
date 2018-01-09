install - indexes
installTimeStampToTxProjectionIndex
	self
		installIndex:
			((UQLLNamedIndexProjection
				named: #TxBlockStampToBlockHash
				relatedIndexName: #BlockStampToBlockHash
				with: UQLLBlockTimestampToTxProjector new)
				environment: self;
				yourself)