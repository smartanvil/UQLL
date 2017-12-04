accessing
all
	^ self data collect: [ :array | (array at: 2 ) asBKHexa: 64 ]