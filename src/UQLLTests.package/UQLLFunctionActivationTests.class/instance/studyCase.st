initialization
studyCase
	^ '
select now(), date(''2016-01-01T10:00:00+02:00''), year(now()), len(instance)
from instance in eth.collections;
'