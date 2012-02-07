class GCD

  def greatest_common_divisor(num0, num1)
    num0 = num0.to_i.abs
    num1 = num1.to_i.abs
  if num1 == 0
      return num0 
    end
     
    if num0 < num1
      greatest_common_divisor(num1, num0) 
    else
      greatest_common_divisor(num1, num0 % num1)
    end
  end
end