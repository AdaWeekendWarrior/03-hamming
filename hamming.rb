class Hamming
  def self.compute(x, y)
    raise ArgumentError.new("Wrong number of arguments") if x.length != y.length 
    # base case
    return 0 if x.length == 0 || y.length == 0
    # recursive case
    ham = 0
    ham += 1 if x.slice!(0) != y.slice!(0)
    return ham + self.compute(x, y)
  end
end