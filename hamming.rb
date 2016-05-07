class Hamming

  def self.compute(distance = 0, strand1, strand2)
    raise ArgumentError if strand1.length != strand2.length

    return distance if strand1.empty? && strand2.empty?

    distance += 1 if strand1[0] != strand2[0]

    return self.compute(distance, strand1[1..-1], strand2[1..-1])
  end

end