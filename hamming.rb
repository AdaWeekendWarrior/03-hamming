class Hamming

  def self.compute(strand1, strand2)

    raise ArgumentError if strand1.length != strand2.length

    # base case
    if strand1.empty? || strand2.empty?
      return 0
    end

    # gets last element of array-type strand1 and strand2
    nuc1 = strand1.split(//).pop
    nuc2 = strand2.split(//).pop

    adder = 0
    if nuc1 != nuc2
      adder = 1
    end

    # removes the final letter so string ending in next letter for comparison can be passed through recursion
    strand1.chop!
    strand2.chop!

    return adder + self.compute(strand1, strand2)

  end

end
