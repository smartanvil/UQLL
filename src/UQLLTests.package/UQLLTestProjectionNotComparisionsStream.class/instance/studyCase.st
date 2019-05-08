initialization
studyCase
	^ 'select !(instance > 15)
	from Numbers1to20 as instance 
	where instance > 10;'