# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer[]}
def two_sum(nums, target)
    match_hash = {}

    nums.each_with_index do |num, index|
        find_num = target - num

        if match_hash.key?(find_num)
            return [ match_hash[find_num], index]
        end

        match_hash[num] = index

    end
    []
end

def two_sum_(nums, target)
	response = []
	
	nums.each_with_index do |first, first_index|
		(first_index+1...nums.length).each do |second_index|
			second = nums[second_index]
			if first+second == target
				response << first_index
				response << second_index
			end
		end
	end
	response
end

p "=======[2,7,11,15]===9======="
p two_sum([2,7,11,15], 9)
p "========[3,2,4], 6========="
p two_sum([3, 3], 6)  # Output: [0, 1]
p "========[3,2,4], 6========="
p two_sum([3,2,4], 6)
