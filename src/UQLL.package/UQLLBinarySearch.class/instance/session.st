private
session
	^ session ifNil: [ session := FogConnection createDefaultConnection session ]