resolving
resolve: anOperation withRight: aValue
	^ self perform: ('{1}left:' format: {anOperation}) asSymbol with: aValue with: false