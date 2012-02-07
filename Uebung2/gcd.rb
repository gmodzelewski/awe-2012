class GCD

	def greatest_common_divisor(num0, num1)
    return false if !(num0.is_a? Integer)
    return false if !(num1.is_a? Integer)

    	if num1.nil
    		puts num0
    		return num0
    		elsif num0 < num1
    			greatest_common_divisor(num1, num0)
   			end
   		end    	
	end
