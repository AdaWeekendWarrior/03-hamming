class Hamming
  def self.compute(strand_1, strand_2)
    count = strand_1.length
    raise ArgumentError if count != strand_2.length
    helper_ham(strand_1,strand_2,count,0)
  end

  def self.helper_ham(strand_1,strand_2,count,result)
    return result if count == 0
    count -= 1
    result += (strand_1[count] <=> strand_2[count]).abs
    result = helper_ham(strand_1, strand_2, count, result)
  end
end
