baselines
baseline: spec
	<baseline>
	spec
		for: #common
		do: [ spec blessing: #baseline.
			spec baseline: #FogDB with: [ spec repository: 'github://sbragagnolo/Fog/src' ].
			spec baseline: #UQL with: [ spec repository: 'github://sbragagnolo/UQL/pharo' ].
			spec baseline: #Xtreams with: [ spec repository: 'github://sbragagnolo/xtreams' ].
			spec package: #UQLL with: [ spec requires: #('EQL' 'FogDB' 'Xtreams') ].
			spec package: #UQLLTests with: [ spec requires: #('UQLL') ] ]