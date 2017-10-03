visiting
visitFromStatement: anEQLFromStatementNode 
	^ UQLLFrom new
		mainsrc: (anEQLFromStatementNode base_source acceptVisitor: self);
		joined: (anEQLFromStatementNode sourceses collect: [ : s | s acceptVisitor: self]);
		yourself