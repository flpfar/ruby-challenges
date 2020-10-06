# Given an array of numbers, replace each even number with two of the same number. e.g, [1,2,5,6,8,-1,-1,-1] -> [1,2,2,5,6,6,8,8].
# Assume that the array has the exact amount of space to accommodate the result.

def last_index(arr)
	i = arr.size - 1
	while i >= 0 && arr[i] == -1
		i -= 1
	end
	i
end

def duplicate_even(arr)
	i = last_index(arr)
	last = arr.size

	while i >= 0
		if (arr[i] % 2).zero?
			last -= 1
			arr[last] = arr[i]
		end
		last -= 1
		arr[last] = arr[i]
		i -= 1
	end

	arr
end

p duplicate_even([1, 2, 5, 6, 8, -1, -1, -1])
