module Luhn
  def self.is_valid?(number)
    #WRITE YOUR SOLUTION HERE
   array = number.to_s.chars.map(&:to_i)
   array.reverse!.each_with_index do |num, x|
   	if x % 2 != 0
   		i = num * 2 
   		if i >= 10
   			i = i - 9
   		end
   	  array[x] = i 
   	end 
   end
    sum = array.inject(0, :+)
     if sum % 10 == 0
     	true
     else
     	false
     end
   #puts array.inspect
  end
end