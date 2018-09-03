*UQLL
nextRow
	^ [ resultSet rowAt: position + 1 ]
		on: SubscriptOutOfBounds
		do: [ nil ]