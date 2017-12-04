accessing
at: anId
	self halt. 
	^ ((self data at: anId) at: 2) asBKHexa: 64