# Given two strings, find the number of common characters between them.

# Example
# For s1 = "aabcc" and s2 = "adcaa", the output should be
# commonCharacterCount(s1, s2) = 3.
# Strings have 3 common characters - 2 "a"s and 1 "c".

def commonCharacterCount(s1, s2)
  s1_hash = s1.chars.group_by { |x| x }.map { |k,v| [k, v.size]}.to_h # transform to hash : { 'a' => 2, 'b' => 1, 'c' => 2 }
  s2_hash = s2.chars.group_by { |x| x }.map { |k,v| [k, v.size]}.to_h
  counter = 0
  s1_hash.each_pair do |k,v| # compare values of s1_hash and s2_hash and takes the min common nb between the two
    counter += [v, s2_hash[k]].min if !s2_hash[k].nil?
  end
  return counter
end
