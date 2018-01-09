*UQLL
privateGet: aScopePath
	| selector |
	selector := (self respondsTo: aScopePath asSymbol)
		ifTrue: [ aScopePath asSymbol ]
		ifFalse: [ | pragma |
			pragma := Pragma allNamed: aScopePath asSymbol from: self class to: Object.
			[ self assert: pragma size = 1 ]
				on: Error
				do:
					[ UQLLError signal: aScopePath printString , ' Not implemented method / function ' , self asSymbol ].
			pragma first method selector ].
	^ MessageSend receiver: self selector: selector