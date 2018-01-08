as yet unclassified
visitSourceBind: anEQLSourceBindNode
	^ UQLLCollectionSelector new
		binding: (anEQLSourceBindNode binding  acceptVisitor: self);
		selector: (anEQLSourceBindNode buffer_name acceptVisitor: self);
		yourself .