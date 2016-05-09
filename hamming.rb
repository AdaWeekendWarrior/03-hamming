class Hamming
  def self.compute(as, bs)
    unless as.length == bs.length
      raise ArgumentError.new("Cannot compare strands of differing lengths")
    end

    return 0 if as.length == 0

    a = as.slice!(0)
    b = bs.slice!(0)

    if a == b
      compute(as, bs)
    else
      1 + compute(as, bs)
    end
  end
end
