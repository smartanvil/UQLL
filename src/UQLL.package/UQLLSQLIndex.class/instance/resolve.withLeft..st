resolving
resolve: anOperation withLeft: aValue
self halt. 
	^ self perform: ('{1}left:' format: {anOperation}) asSymbol with: aValue with: true