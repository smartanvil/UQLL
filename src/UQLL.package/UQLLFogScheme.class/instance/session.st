accessing
session
	^ session ifNil: [ session := self connection session ]