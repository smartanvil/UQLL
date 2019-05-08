initialization
studyCase
	^ 'select instance + 10
	from Numbers1to20 as instance 
	where !(instance > 10);'