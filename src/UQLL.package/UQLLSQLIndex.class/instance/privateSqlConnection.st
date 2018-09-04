accessing
privateSqlConnection
	privateSqlConnection
		ifNil: [ privateSqlConnection := GADriver
				fromConnectionString: 'postgresv2://localhost:5432?user=uqll&password=uqll' ].
	privateSqlConnection isConnected
		ifFalse: [ privateSqlConnection connect ].
	^ privateSqlConnection