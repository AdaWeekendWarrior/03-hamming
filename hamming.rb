class Hamming
  # def self.compute(a,b)
  #   raise ArgumentError unless a.length == b.length
    
  #   a.chars.zip(b.chars).reduce(0) { |distance, pair|
  #     pair[0] == pair[1] ? distance : distance += 1
  #   }
  # end

  def self.compute(a, b)
    length = a.length

    distance = 0
    length.times do |index|
      distance += 1 unless a[index] == b[index]
    end

    distance
  end
end
