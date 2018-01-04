accessing
connection
	^ (self selectConnectionClass: url scheme) new
		url: url;
		name: name;
		yourself