*UQLL
mergeBy: anOperator withRight: aRightBranch
	^ self select: [ :each | each perform: anOperator asSymbol withArguments: {aRightBranch} ]