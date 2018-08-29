accessing
all
	^ self  data keys collect: [ :k | k asBKHexa: 40 ]