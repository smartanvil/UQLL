initialization
studyCase
	^ 'select instance
	from instance in Numbers1to20
	where id(instance) > id(10);'