double-dispatch
indexEntriesFor: filter
	 " This is  a double dispatch + decorator. the only stream that can ssssssssssrespond this message is the one with a collection as source: the indexable colletion source stream "
	^ source indexEntriesFor: filter