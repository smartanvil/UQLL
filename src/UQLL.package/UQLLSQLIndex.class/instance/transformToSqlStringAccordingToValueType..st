private - sql
transformToSqlStringAccordingToValueType: aValue
 
	self valueType = #timestamp ifTrue: [ ^ '''{1}''' format: {aValue asString}  ].
	self valueType = #text ifTrue: [ ^ '''{1}''' format: {aValue asString}  ].
	self valueType = #boolean ifTrue: [ ^ '''{1}''' format: {aValue asString}  ].
	self valueType = #integer ifTrue: [ ^ '{1}' format: {aValue asString}  ].
	UQLLError signal: ('Type {1} not yet supported' format:{self valueType })