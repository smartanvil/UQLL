arithmetic
// aCollection
	^ aCollection inject: self into: [ :path :each | path / each ]