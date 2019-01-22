baselines
baseline: spec
	<baseline>
	spec
		for: #common
		do: [ spec blessing: #baseline.
			spec baseline: #FogLive with: [ spec repository: 'github://smartanvil/Fog/src' ].
			spec baseline: #UQL with: [ spec repository: 'github://smartanvil/UQL/pharo' ].
			spec baseline: #Garage with: [ spec repository: 'github://pharo-rdbms/Garage' ].
			spec package: #UQLL with: [ spec requires: #('UQL' 'FogLive' 'Garage') ].
			spec package: #UQLLTests with: [ spec requires: #('UQLL'  ) ] ]