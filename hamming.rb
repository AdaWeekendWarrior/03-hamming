class Hamming
  def self.compute(strand_one, strand_two, count = 0)
    throw "ArgumentError" if (strand_one.length != strand_two.length)
    (return count) if strand_one.length <1
    one = strand_one.slice!(0)
    two = strand_two.slice!(0)
    (count +=1) if one != two
    Hamming.compute(strand_one, strand_two, count)

  end
end
