accessing
connection
	^ (self selectConnectionClass: type) new
		url: url;
		name: name;
		yourself