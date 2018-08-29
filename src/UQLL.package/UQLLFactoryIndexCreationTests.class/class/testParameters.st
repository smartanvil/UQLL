building suites
testParameters
	^ ParametrizedTestMatrix new forSelector: #factory addOptions: (UQLLIndexFactory allSubclasses collect: #new)