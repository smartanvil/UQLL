initialize
initializeWith: anUQLLEnvironment
	| keys partitions rest mutex |
	keys := collection all.
	mutex := Mutex new.
	rest := keys size \\ 1000.
	partitions := keys size // 1000.
	environment := anUQLLEnvironment.
	anUQLLEnvironment
		parallelize: [ (1 to: partitions)
				collect: [ :i | 
					| idx array |
					array := Array new: 1000.
					idx := (i - 1) * 1000 + 1.
					[ idx to: idx + 999 do: [ :id | 
						| key |
						key := keys at: id.
						array at: id - idx + 1 put: (member value: (collection at: key)) ].
					mutex
						critical: [ self
								registerAll: array
								allongWithFullscanKeys:
									(UQLLIndexInterval new
										from: idx;
										to: idx + 999;
										index: keys) asOrderedCollection ] ] ] ]
		whileWaiting: [ | idx array |
			array := Array new: rest.
			idx := partitions * 1000 + 1.
			idx + 1 to: partitions * 1000 + rest do: [ :id | 
				| key |
				key := keys at: id.
				array at: id - idx + 1 put: (member value: (collection at: key)) ].
			mutex
				critical: [ self
						registerAll: array
						allongWithFullscanKeys:
							(UQLLIndexInterval new
								from: idx;
								to: idx + rest;
								index: keys) asOrderedCollection ].
			array ].
	"
	
		anUQLLEnvironment
		parallelize: [ (1 to: keys size)
				collect: [ :idx | 
					| key |
					key := keys at: idx.
					[ array at: idx put: (member value: (collection at: key)) ] ] ]
			
	] .
"
	anUQLLEnvironment install: self at: self name asScopePath.
	collection registerIndex: self