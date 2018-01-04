accessing
url: aUrl
	super
		url:
			(aUrl clone
				scheme: #http;
				yourself)