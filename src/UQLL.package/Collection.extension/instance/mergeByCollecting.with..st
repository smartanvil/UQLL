*UQLL
mergeByCollecting: anOperator with: aRightBranch
	^ self collect: [ :each | each perform: anOperator asSymbol withArguments: {aRightBranch} ]