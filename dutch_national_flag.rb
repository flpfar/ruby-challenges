# You​ ​ are​ ​ given​ ​ an​ ​ array​ ​ of​ ​ integers​ ​ and​ ​ an​ ​ index​ ​ X.​ ​ Rearrange​ ​ the​ ​ array​ ​ in​ ​ the following​ ​ order:
# [all​ ​ elements​ ​ less​ ​ than​ ​ a[X],​ ​ elements​ ​ equal​ ​ to​ ​ a[X],​ ​ elements​ ​ greater​ ​ than​ ​ a[X]], similar​ ​ to​ ​ the​ ​ Dutch​ ​ National​ ​ Flag​ ​ (DNF).
# For​ ​ example, a​ ​ = ​ ​ [3,5,2,6,8,4,4,6,4,4,3]​ ​ and​ ​ i ​ ​ = ​ ​ 5 ​ ​ -->​ ​ result​ ​ = ​ ​ [3,2,3,4,4,4,4,5,6,8,6].

def dnflag(arr, pivot)
	low_boundary = 0
	high_boundary = arr.size - 1
	i = 0

	while i <= high_boundary
		if arr[i] < pivot
			arr[i], arr[low_boundary] = arr[low_boundary], arr[i]
			low_boundary += 1
			i += 1
		elsif arr[i] > pivot
			arr[i], arr[high_boundary] = arr[high_boundary], arr[i]
			high_boundary -= 1
		else
			i += 1
		end
	end
	arr
end

p dnflag([3,5,2,6,8,4,4,6,4,4,3], 5)

