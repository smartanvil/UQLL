accessing
interval: from to: to
	^ UQLLIndexInterval new
		from: from;
		to: to;
		index: self;
		yourself