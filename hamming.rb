class Hamming

  def self.compute(x, y)
    raise ArgumentError unless x.length == y.length
    if x == y
      return 0
    end

    if x[0] == y[0]
      ht = 0
    else
      ht = 1
    end

    restx = x[1..x.length-1]
    resty = y[1..y.length-1]
    return ht + Hamming.compute(restx, resty)

    # RECURSIVE
    # hamming(this_char) + hamming(rest)


  end
end
