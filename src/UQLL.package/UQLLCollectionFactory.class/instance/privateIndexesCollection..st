install - collections
privateIndexesCollection: anEnvironment
	^ [ (anEnvironment names associations select: [ :a | a value isUQLLIndex ]) collect: #key ]