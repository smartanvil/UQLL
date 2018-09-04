private - sql
transformToSqlStringAccordingToValueType: aValue
 
	valueType = #timestamp ifTrue: [ ^ '''{1}''' format: {aValue asString}  ].
	valueType = #text ifTrue: [ ^ '''{1}''' format: {aValue asString}  ].
	valueType = #integer ifTrue: [ ^ '{1}' format: {aValue asString}  ].
	UQLLError signal: ('Type {1} not yet supported' format:{valueType })