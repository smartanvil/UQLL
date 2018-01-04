arithmetic
copyFrom: aUQLLPath
	| size |
	size := aUQLLPath size min: self size.
	1 to: size do: [:i | self at: i put: (aUQLLPath at: i)].
	