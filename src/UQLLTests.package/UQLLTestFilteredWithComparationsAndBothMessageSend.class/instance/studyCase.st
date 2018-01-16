initialization
studyCase
	^ 'select instance
	from instance in Numbers1to20
	where instance.yourself() > 10.yourself();'