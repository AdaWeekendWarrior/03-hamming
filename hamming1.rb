# Hamming Test Project
class Hamming

  def self.compute(str1, str2)
    # hamming distance assumes strings of equal length
    # .chars splits a string into an array
    str1 = str1.chars
    str2 = str2.chars

    raise ArgumentError unless str1.length == str2.length #error when user makes an arror, not an error with syntax

    differences = 0
    str1.each_index do |ind|
        if str1[ind] != str2[ind]
          differences += 1
        end
      end
      return differences
  end
end
