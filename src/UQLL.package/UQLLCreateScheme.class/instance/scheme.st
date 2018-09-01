accessing
scheme
	^ (self selectSchemeClass: type) new
		url: url;
		name: name;
		yourself