initialization
studyCase
	^ '
select  instance.asSymbol(), ''2016-01-01T10:00:00+02:00''.asDateAndTime(), now.year(), now.hasEqualTicks(now())
from instance in eth.collections;
'