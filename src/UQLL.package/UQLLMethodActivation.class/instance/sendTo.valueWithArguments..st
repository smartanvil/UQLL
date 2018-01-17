message send
sendTo: aReceiver valueWithArguments: aCollectionOfArgs
	^ (aReceiver privateGet: selector) valueWithArguments: aCollectionOfArgs