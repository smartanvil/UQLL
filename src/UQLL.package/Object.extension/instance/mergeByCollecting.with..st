*UQLL
mergeByCollecting: anOperator with: aCollection
	^ aCollection collect: [ :each | self perform: anOperator asSymbol withArguments: {each} ]