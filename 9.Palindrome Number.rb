# Given an integer x, return true if x is a palindrome, and false otherwise.

# Example 1:

# Input: x = 121
# Output: true
# Explanation: 121 reads as 121 from left to right and from right to left.
# Example 2:

# Input: x = -121
# Output: false
# Explanation: From left to right, it reads -121. From right to left, it becomes 121-. Therefore it is not a palindrome.
# Example 3:

# Input: x = 10
# Output: false
# Explanation: Reads 01 from right to left. Therefore it is not a palindrome.


# @param {Integer} x
# @return {Boolean}
def is_palindrome_with_reverse(x)
  # Convert the integer to a string
  str_x = x.to_s
  puts x
  puts str_x.reverse
  # Compare the string with its reverse
  return str_x == str_x.reverse # str_x[::-1] is the same as str_x.reverse
end


# String-руу хөрвүүлэхгүйгээр бодох
def is_palindrome_without_reverse(x)
  return false if x < 0  # Negative numbers are not palindromes

  original_x = x
  reversed_x = 0

  while x > 0
    puts "x : #{x}"
    digit = x % 10 # Get the last digit
    puts "digit: #{digit}"
    reversed_x = reversed_x * 10 + digit # Append the digit to the reversed number
    # 10-т утгааар үрж байгаа нь одоогийн дугаарын дараах байрыг нэмнэ.
    puts "reversed_x: #{reversed_x}"
    x = x / 10 # Remove the last digit
  end
  puts "original_x: #{original_x}"
  puts "reversed_x: #{reversed_x}"
  return original_x == reversed_x
end


x = 32123
result = is_palindrome_without_reverse(x)
puts result

