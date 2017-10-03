visiting
visitLimitStatement: anEQLLimitStatementNode
	^ UQLLLimit new
		limit: anEQLLimitStatementNode amount value asNumber;
		yourself