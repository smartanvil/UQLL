initialization
studyCase
	^ 'select instance
	from Numbers1to20 as instance 
	where ((0-instance) * -1) > 10;'