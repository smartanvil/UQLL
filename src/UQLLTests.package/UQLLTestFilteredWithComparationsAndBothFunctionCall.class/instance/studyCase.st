initialization
studyCase
	^ 'select instance
	from Numbers1to20 as instance 
	where id(instance) > id(10);'