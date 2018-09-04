accessing
parallelize: aBlockGenerator
	| tasksFutures errors |
	errors := Set new.
	self runner poolMaxSize: 30.
	tasksFutures := aBlockGenerator value collect: [ :t | t asTask future: self runner ].
	tasksFutures do: [ :tf | tf onFailureDo: [ :e | errors add: e ] ].
	tasksFutures
		do: [ :t | 
			[ t waitForCompletion: 2 second ]
				on: Error
				do: [  ] ].
	tasksFutures
		do: [ :t | 
			[ t waitForCompletion: 1 second ]
				on: Error
				do: [  ] ].
	errors isEmpty
		ifFalse: [ UQLLError new
				extras: errors;
				signal: 'One or more errors where founded in the process. ' ]