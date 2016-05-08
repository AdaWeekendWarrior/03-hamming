class Hamming

  def self.compute(seq1,seq2)
    unless seq1.length == seq2.length
      raise ArgumentError.new("The lengths of the strands must be equal.")
    end

    @array1 = seq1.split(//)
    @array2 = seq2.split(//)
    @count = 0
    next_elements
    count_differences(@element1,@element2)
  end

  def self.count_differences(element1,element2)
    if @element1 == nil
      return @count
    end

    if element1 != element2
      @count += 1
      next_elements
      count_differences(@element1,@element2)
    else
      @count += 0
      next_elements
      count_differences(@element1,@element2)
    end
  end

  def self.next_elements
    @element1 = @array1.shift
    @element2 = @array2.shift
  end

end
