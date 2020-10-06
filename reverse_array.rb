# Given an array, reverse the order of its elements without allocating more space.

def reverse_array(array)
	first = 0
	last = array.size - 1

	while(first < last)
		array[first], array[last] = array[last], array[first]
		first += 1
		last -= 1
	end
	array
end

p reverse_array([1, 2, 3, 4, 5, 6])
p reverse_array([1, 2, 3, 4, 5])
