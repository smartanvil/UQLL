initialization
studyCase
	^ '(select instance
	from instance in Numbers1to20)
	union
	(select instance
	from instance in Numbers10to30);'