class Hamming
  def self.compute(first_strand, second_strand)

    first_strand = first_strand.chars
    second_strand = second_strand.chars
    
    # error handling 
    if first_strand.length != second_strand.length
      raise ArgumentError, "Strands must be the same length."
    end

    difference = 0 
    recursion(first_strand,second_strand, difference)
  end

  def self.recursion(first_strand, second_strand, difference)
    # base case
    if first_strand.empty? || second_strand.empty? 
      return difference
    end 
    
    if first_strand[0] == second_strand[0]
      difference += 0
      first_strand.shift
      second_strand.shift
      recursion(first_strand, second_strand, difference)
    else first_strand[0] != second_strand[0]
      difference += 1 
      first_strand.shift
      second_strand.shift
      recursion(first_strand, second_strand, difference)
    end 
  end 
end
