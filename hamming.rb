class Hamming
  def self.compute(strand_one, strand_two, distance = 0)
  raise ArgumentError unless strand_one.length == strand_two.length
    if strand_one.length == 0 
      return distance
    else
      distance += 1 if strand_one.slice!(0) != strand_two.slice!(0)
      self.compute(strand_one, strand_two) + distance
    end
  end
end
