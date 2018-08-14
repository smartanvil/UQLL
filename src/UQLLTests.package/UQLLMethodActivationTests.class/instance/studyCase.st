initialization
studyCase
	^ '
select  instance.asSymbol(), ''2016-01-01T10:00:00+02:00''.asDateAndTime(), ''2016-01-01T10:00:00+02:00''.asDateAndTime.year(), ''2016-01-01T10:00:00+02:00''.asDateAndTime.hasEqualTicks(now())
from eth.collections as instance;
'