class Hamming

  def self.compute(first, second)
    # set to return the total distance between strands
    distance = 0
    # Currently this method is erroring because I can't figure out how to keep a count that doesn't get reset by the recursion.

    # strands of unequal length cannot be compared.
    # chose ArgumentError as this is a problem with the args.
    raise ArgumentError if first.length != second.length
    return distance if first.length == 0

    if first[-1] == second[-1]
      distance += 0
      first.chop!
      second.chop!
      self.compute(first, second)
    elsif first[-1] != second[-1]
      distance += 1
      first.chop!
      second.chop!
      self.compute(first, second)
    end
  end
end