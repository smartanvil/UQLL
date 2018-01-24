*UQLL
privateGet: aScopePath
	| selector |
	selector := (self respondsTo: aScopePath asSymbol)
		ifTrue: [ aScopePath asSymbol ]
		ifFalse: [ | pragma |
			pragma := Pragma allNamed: aScopePath asSymbol from: self class to: Object.
			pragma size = 1
				ifTrue: [ pragma first method selector ]
				ifFalse: [ (self respondsTo: (aScopePath asSymbol , ':') asSymbol)
						ifTrue: [ (aScopePath asSymbol , ':') asSymbol ]
						ifFalse: [ UQLLError signal: aScopePath printString , ' Not implemented method / function ' , self printString ] ] ].
	^ MessageSend receiver: self selector: selector