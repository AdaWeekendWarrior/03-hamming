 # Hamming Test Project
class Hamming

  def self.compute(str1, str2)
    puts "str1 = #{str1}, str2 = #{str2}"
    # Base case: no more characters to process / empty string
    return 0 if str1.length <= 0 # str1 == "" , str1.empty?

    # Recursive case: peel off one letter, recurse, and add 1 if different
    first = str1[0]
    second = str2[0]
    if first != second
      puts "First letters are different"
      return 1 + compute(str1[1..-1],str2[1..-1])
    else
      return 0 + compute(str1[1..-1],str2[1..-1])
    end

  end

end

#str1('AT') = 1
#str2('CT') = 1
puts Hamming.compute("ATGAC","ACTAC")
