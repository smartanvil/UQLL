accessing
index
	^ index ifNil: [ index := FLMaterializer materializeFromFileNamed: file fullName ]