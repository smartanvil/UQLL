as yet unclassified
timestampIndex
	^ UQLLStampToHashIndex new
		name: #BlockStampToBlockHash;
		file: self indexDirectory / 'BlockStampToBlockHash.idx.fl';
		yourself