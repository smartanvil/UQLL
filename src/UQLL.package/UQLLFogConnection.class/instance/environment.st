accessing
environment
	^ environment ifNil: [ environment := self defaultEnvironment ]