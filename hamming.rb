class Hamming
  
  def self.compute(one, two)
    raise ArgumentError unless one.length == two.length

    return 0 if one == two

    if one[0] == two[0]
      return self.compute(one[1..-1], two[1..-1])
    end

    1 + self.compute(one[1..-1], two[1..-1])
  end
end