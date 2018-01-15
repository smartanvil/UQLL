*UQLL
hasEqualTicks: aDateAndTime
	<hasEqualTicks>
	^ (self julianDayNumberUTC = aDateAndTime julianDayNumberUTC)
		and: [ (seconds = aDateAndTime secondsSinceMidnightUTC)
			and: [ nanos = aDateAndTime nanoSecond ] ]

