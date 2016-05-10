class Hamming
  def self.compute(strand_1, strand_2, distance = 0)
    raise ArgumentError if strand_1.length != strand_2.length

    return distance if strand_1.length == 0

    unless strand_1[0] == strand_2[0]
      distance += 1
    end

    unless strand_1.length == 1
      return Hamming.compute(strand_1[1..-1], strand_2[1..-1], distance)
    end

    return distance

  end
end
