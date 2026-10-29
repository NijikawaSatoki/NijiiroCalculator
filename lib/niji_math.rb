# =====================================================
# Niji's Math module
# -----------------------------------------------------
# A module containing some maths methods.
# =====================================================

module NijiMath
  # Add two numbers
  def add(addend_x, addend_y)
    sum = addend_x + addend_y
    return sum
  end
  # Subtract two numbers
  def subtract(minuend, subtrahend)
    difference = minuend - subtrahend
    return difference
  end
  # Multiply two numbers
  def multiply(factor_x, factor_y)
    product = factor_x * factor_y
    return product
  end
  # Divide two numbers
  def divide(dividend, divisor)
    # Check if attempting to divide by 0
    if divisor == 0
      puts "Error! You cannot divide by 0!\n"
    else
      quotient = dividend / divisor
    end
    return quotient
  end
  # Divide two numbers and take the remainder
  def modulo(dividend, divisor)
    # Check if attemtping to take remainder of "x / 0"
    if divisor == 0
      puts "Error! You cannot divide by 0!\n"
    else
      remainder = dividend % divisor
    end
    return remainder
  end
  
  # Raise a number to the power of another number and return the result
  def exponent(base, power)
    result = base ** power
    return result
  end
  # Take the square root of a given square
  def square_root(square)
    square_root = Math.sqrt(square)
    return square_root
  end
end

# >>>>>> END OF FILE <<<<<< #
