# Environment

	UQLL Runs over a runtime environment. Each query will impact over this runtime. 
	For restarting the environment to 0 you have only to execute
	
	UQLLRunningEnvironmentHolder resetSoleInstance.  

# Query grammars 
	
	## Create connection
		>> create {ethereum | mongodb  | sql |  bitcoin | litecoin | bitcash} connection <name> [url];
		create ethereum connection eth http://localhost:8545;
		
		A create connection statement will add a connection and it related environment into the general environment. 
	
	## Select
		select { <I>  | expression}
		from <I> in <environment>.<collection name> 
		
	### Where
		select { <I>  | expression}
		from <I> in <environment>.<collection name> 
		where {boolean expression} 
		
	### OrderBy
		select { <I>  | expression}
		from <I> in <environment>.<collection name> 
		where {boolean expression} 
		order by <expression> 
		
	### Limit
		select { <I>  | expression}
		from <I> in <environment>.<collection name> 
		where {boolean expression} 
		order by <expression> 
		limit <number>
		
	## Create index
	## Create Collection 
	




