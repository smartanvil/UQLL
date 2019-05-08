*UQLL
parseStream: aStream
	[ ^ super parseStream: aStream ]
		on: SmaCCParserError
		do: [ :error | 
			| text fromTo from to |
			fromTo := self fromToFrom: error messageText.
			from := (fromTo at: 1) - 1.
			to := (fromTo at: 2) - from.
			text := aStream reset next: from.
			text := text , '->' , (aStream next: to) , '<-' , aStream upToEnd.
			SmaCCParserError signal: text ]