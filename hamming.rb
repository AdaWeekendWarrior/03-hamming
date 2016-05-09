class Hamming

  def self.compute(first, second, differences=0)
    raise ArgumentError, 'The strands must be the same length' unless first.length == second.length
    return differences if first.length == 0
    first = first.chars
    second = second.chars
    differences += 1 if first.shift != second.shift
    compute(first.join, second.join, differences)
  end

end
