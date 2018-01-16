initialization
studyCase
	^ 'select instance
	from instance in Numbers1to20
	where yourself(instance) > 10;'