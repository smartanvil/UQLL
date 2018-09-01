initialization
testUninstallConnectionMakesConnectionunAvailable
	| connection |
	connection := UQLLFogScheme new
		name: #fog_ethereum;
		yourself.
	environment registerScheme: connection.
	self assert: (environment exists: #fog_ethereum asScopePath).
	environment uninstall: #fog_ethereum asScopePath.
	self deny: (environment exists: #fog_ethereum asScopePath)