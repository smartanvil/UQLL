initialization
testUninstallConnectionMakesConnectionunAvailable
	| connection |
	connection := UQLLFogConnection new
		name: #fog_ethereum;
		yourself.
	environment registerConnection: connection.
	self assert: (environment exists: #fog_ethereum asScopePath).
	environment uninstall: #fog_ethereum asScopePath.
	self deny: (environment exists: #fog_ethereum asScopePath)