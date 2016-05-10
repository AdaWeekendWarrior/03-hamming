class Hamming

  def self.compute(a,b)
    raise ArgumentError unless a.length == b.length
    self.compute_helper(a,b)
  end

  def self.compute_helper(a,b)
    return 0 if a == nil
    a[0] == b[0] ? value = 0 : value = 1
    value + self.compute_helper(a[1..-1], b[1..-1])
  end

end
