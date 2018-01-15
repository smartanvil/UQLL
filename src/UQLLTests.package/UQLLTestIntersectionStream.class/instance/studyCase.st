initialization
studyCase
	^ '(select instance
	from instance in Numbers1to20)
	intersect
	(select instance
	from instance in Numbers10to30);'