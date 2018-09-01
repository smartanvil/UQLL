accessing
selectSchemeClass: aSymbol
	^ self schemes
		at: aSymbol
		ifAbsent: [ UQLLError
				signal:
					('There is not connection scheme named: {1}. Expected:{2}'
						format:
							{aSymbol.
							(' | ' join: self schemes keys)}) ]