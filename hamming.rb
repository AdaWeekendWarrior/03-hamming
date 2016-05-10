#class Hamming
#   def self.compute(dna,sdna)
#     c = []
#     d = dna.split('')
#     s = sdna.split('')
#     if s.length != d.length
#        raise ArgumentError.new("First or second strand to long") #could have used unless
#     end
#     not_matching_element = d.dup
#     f = 0
#     until f == s.length
#       s.each_index do |i|
#         if not_matching_element[i] != s[i]
#           c << s[i]
#
#         end
#       f += 1
#       end
#     end
#     return c.length
#   end
# end
#
#
#


class Hamming
  def self.compute(dna,sdna, counter = 0)
    if dna.length != sdna.length
      raise ArgumentError
    end

    if dna.length == 0 && sdna.length == 0
      return counter

    elsif
      dna[0] != sdna[0]
      counter += 1
    end
    return self.compute(dna[1..-1], sdna[1..-1], counter)

  end
end
