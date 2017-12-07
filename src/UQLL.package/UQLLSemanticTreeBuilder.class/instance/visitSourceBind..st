as yet unclassified
visitSourceBind: anEQLSourceBindNode
	^ UQLLCollectionSelector new
		binding: (anEQLSourceBindNode binding  acceptVisitor: self);
		selector: (anEQLSourceBindNode Collection_name  acceptVisitor: self);
		yourself .