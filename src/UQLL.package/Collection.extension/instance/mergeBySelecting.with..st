*UQLL
mergeBySelecting: anOperator with: aRightBranch
	^ self select: [ :each | each perform: anOperator asSymbol withArguments: {aRightBranch} ]