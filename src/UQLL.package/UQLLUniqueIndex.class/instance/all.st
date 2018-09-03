private
all
	^ all
		ifNil: [ all := (self privateSqlExecute: ('select index from {1}' format: {name asSymbol}))
				collect: [ :gasciro | gasciro at: 1 ] ]