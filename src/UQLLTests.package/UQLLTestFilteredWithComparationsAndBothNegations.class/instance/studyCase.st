initialization
studyCase
	^ 'select instance + 10
	from instance in Numbers1to20
	where !(instance > 10);'