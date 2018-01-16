An uqll stream is a decorable stream that allows compositions. Ordered stream is an stream with a sorter object htat knows the direction and property to order by. 

DISCLAIMER: This stream loades all the source stream, it orders the result and create a new source with the ordered items. Not good strategy for large sets of data that will not be completely consumed. 