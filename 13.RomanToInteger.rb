# Roman numerals are represented by seven different symbols: I, V, X, L, C, D and M.
# Symbol       Value
# I             1
# V             5
# X             10
# L             50
# C             100
# D             500
# M             1000

# For example, 2 is written as II in Roman numeral, just two ones added together. 12 is written as XII, which is simply X + II. The number 27 is written as XXVII, which is XX + V + II.

# Roman numerals are usually written largest to smallest from left to right. However, the numeral for four is not IIII. Instead, the number four is written as IV. Because the one is before the five we subtract it making four. The same principle applies to the number nine, which is written as IX. There are six instances where subtraction is used:

# I can be placed before V (5) and X (10) to make 4 and 9.
# X can be placed before L (50) and C (100) to make 40 and 90.
# C can be placed before D (500) and M (1000) to make 400 and 900.
# Given a roman numeral, convert it to an integer.

# Example 1:

# Input: s = "III"
# Output: 3
# Explanation: III = 3.


def roman_to_int(s)
  roman_dict = {
    'I' => 1,
    'V' => 5,
    'X' => 10,
    'L' => 50,
    'C' => 100,
    'D' => 500,
    'M' => 1000
  }

  result = 0
  prev_value = 0

  s.reverse.each_char do |char|
    value = roman_dict[char]
    if value < prev_value
      result -= value
    else
      result += value
    end
    prev_value = value
  end

  result
end

# Example usage:
roman_numeral = "LVIII"
result = roman_to_int(roman_numeral)
puts result


# char-->, I
# value-->,1
# result (+) 1
# prev_value = value, 0 = 1
# char-->, I
# value-->,1
# result (+) 2
# prev_value = value, 1 = 1
# char-->, I
# value-->,1
# result (+) 3
# prev_value = value, 1 = 1
# char-->, V
# value-->,5
# result (+) 8
# prev_value = value, 1 = 5
# char-->, L
# value-->,50
# result (+) 58
# prev_value = value, 5 = 50
# 58
