private
nameFor: anObject
	^ names keyAtValue: anObject ifAbsent: [ UQLLError signal: 'Error resolving the path for scope' ]