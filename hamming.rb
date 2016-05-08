class Hamming
  def self.compute(one, two)
    return 0 if one.nil?
    raise ArgumentError if one.length != two.length
    distance = 0
    distance += 1 if one[0] != two[0]
    return distance + self.compute(one[1..-1], two[1..-1])
  end
end
