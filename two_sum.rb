# 2 Sum Problem: Given a sorted array of integers, find two numbers in the array that sum to a given integer target.
# For example, if a = [1,2,3,5,6,7] and target = 11, the answer will be 5 and 6.

def two_sum(array, target)
	smallest = 0
	greatest = array.size - 1

	while (smallest < greatest)
		sum = array[smallest] + array[greatest]
		return [array[smallest], array[greatest]] if sum == target

		if sum > target
			greatest -= 1
		else
			smallest += 1
		end
	end
	null
end

p two_sum([1, 2, 3, 5, 6, 7], 11)
p two_sum([2, 3, 4, 5], 7)
