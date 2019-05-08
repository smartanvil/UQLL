private
connection
	^ session ifNil: [ session := FogConnection createDefaultConnection session ]