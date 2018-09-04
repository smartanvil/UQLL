accessing
runner
	^ pool ifNil: [ pool := TKTCommonQueueWorkerPool createDefault ]