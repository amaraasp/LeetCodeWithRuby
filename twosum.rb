# Given an array of integers nums and an integer target, return indices of the two numbers such that they add up to target.
# You may assume that each input would have exactly one solution, and you may not use the same element twice.
# You can return the answer in any order.


# Example 1:

# Input: nums = [2,7,11,15], target = 9
# Output: [0,1]
# Explanation: Because nums[0] + nums[1] == 9, we return [0, 1].
# Example 2:

# Input: nums = [3,2,4], target = 6
# Output: [1,2]
# Example 3:

# Input: nums = [3,3], target = 6
# Output: [0,1]

# Time complexity: O(n^2)
# Space complexity: O(1)
# Brute Force
# The brute force approach is simple.
# Loop through each element xx and find if there is another value that equals to target - xtarget−x.

def two_sum(num, target)
  n = num.length
  for i in 0..n-1
    for j in i+1..n-1
      if num[i] + num[j] == target
        return [i, j]
      end
    end
  end
  return []
end

# Time complexity: O(n^2)
# Space complexity: O(n)
# Hash table
# We reduce the look up time from O(n) to O(1) by trading space for speed.
def two_sum2(nums, target)
  seen = {}
  nums.each_with_index do |num, i|
    complement = target - num
    if seen.key?(complement)
      return [seen[complement], i]
    end
    seen[num] = i
  end
  return []
end



nums2 = [3,1,2,4]
target2 = 5
puts two_sum(nums2, target2)  # Output: [0, 2]
puts two_sum2(nums2, target2)  # Output: [2, 2]
