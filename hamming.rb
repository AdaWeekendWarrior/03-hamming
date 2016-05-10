class Hamming
	def self.compute (var1, var2)
    raise ArgumentError unless var1.length == var2.length
    self.compute_helper(var1, var2)
  end

   def self.compute_helper(var1,var2)
     return 0 if var1 == nil
     var1[0] == var2[0] ? value = 0 : value = 1
     value + self.compute_helper(var1[1..-1], var2[1..-1])
   end
end

  # def self.compute (var1, var2)
  #   array1 = var1.chars.to_a
  #   array2 = var2.chars.to_a
  #   index = 0
  #   sum = 0
  #   raise ArgumentError unless var1.length == var2.length
  #   array1.each do |char|
  #     if char != array2[index]
  #       sum += 1
  #     end
  #     index +=1
  #   end
  #   return sum
  # end

	#index starts from 0
	#var1.length.times do |index|
	# 	difference +=1 if var1.[index] != var2[index]
	#end
	#return difference