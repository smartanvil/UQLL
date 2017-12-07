initialization
installTimeStampToTxProjectionIndex
	self
		registerIndex:
			(UQLLNamedIndexProjection
				named: #TxBlockStampToBlockHash
				relatedIndexName: #BlockStampToBlockHash
				with: UQLLBlockTimestampToTxProjector new)