initialization
initialize
	super initialize.
	connection := GADriver fromConnectionString: 'postgresv2://localhost:5432?user=uqll&password=uqll'.
	connection connect