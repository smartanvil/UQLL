private
privateGet: aToken ifAbsentInstall: aBlock
	^ names at: aToken asSymbol ifAbsentPut: aBlock