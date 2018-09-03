dropping
dropIndexNamed: name kind: kind
self halt.
	connection
		execute:
			(' delete from uqll_index_registry where name = ''{1}'' and kind = ''{2}'''
				format:
					{name.
					kind})