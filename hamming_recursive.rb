class Hamming

  def self.compute(strand1, strand2, hamming_distance = 0)

    strand1_array = strand1.split(//)
    strand2_array = strand2.split(//)

    if strand1_array.length != strand2_array.length
      raise ArgumentError, "Strands must be the same length."
    end

    return hamming_distance if strand1_array.empty? && strand2_array.empty?

    hamming_distance += 1 if strand1_array[0] != strand2_array[0]

    strand1_array.shift
    strand2_array.shift

    return self.compute(strand1_array.join, strand2_array.join, hamming_distance)


  end

end
