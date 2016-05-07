class Hamming

  def self.compute(seq1,seq2)
    unless seq1.length == seq2.length
      raise ArgumentError.new("The lengths of the strands must be equal.")
    end

    array1 = seq1.split(//)
    array2 = seq2.split(//)
    count = 0

    array1.each_with_index do |item,index|
      if item == array2[index]
        count = count + 0
      else
        count = count + 1
      end
    end
    return count
  end
  
end
