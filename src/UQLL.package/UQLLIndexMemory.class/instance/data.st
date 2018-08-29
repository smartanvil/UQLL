accessing
data
	^ data isEmptyOrNil
		ifTrue: [ | index |
			file exists
				ifTrue: [ index := FLMaterializer materializeFromFileNamed: file fullName.
					data := index data.
					tag := index tag ].
			data ]