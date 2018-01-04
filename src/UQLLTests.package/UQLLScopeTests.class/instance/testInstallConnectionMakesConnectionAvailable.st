initialization
testInstallConnectionMakesConnectionAvailable
	self deny: (environment exists: #fog_ethereum asScopePath).
	environment
		registerConnection:
			(UQLLFogConnection new
				name: #fog_ethereum;
				yourself).
	self assert: (environment exists: #fog_ethereum asScopePath).
	self assert: (environment get: #fog_ethereum asScopePath) class equals: UQLLEthereumEnvironment