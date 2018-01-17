initialization
studyCase
	^ 'select instance
	from instance in Numbers1to20
	where ((0-instance) * -1) > 10;'