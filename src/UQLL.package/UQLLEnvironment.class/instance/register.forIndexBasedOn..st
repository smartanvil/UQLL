initialization
register: indexTag forIndexBasedOn: aGeneralTag
	indexTags at: indexTag ifAbsentPut: [ self indexInstanceFor: aGeneralTag ]