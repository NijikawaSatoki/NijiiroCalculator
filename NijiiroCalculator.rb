# ==============================================================================
# Nijiiro Calculator v1.0.0
# Written by Satoki Nijikawa
# 
# A simple calculator written in Ruby.
# It can add, subtract, multiply, divide, and modulo.
# ==============================================================================

# ------------------------------------------------------------------------------
# Methods
# ------------------------------------------------------------------------------

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
  quotient = dividend / divisor
  return quotient
end

# Divide two numbers and take the remainder
def modulo(dividend, divisor)
  remainder = dividend % divisor
  return remainder
end

# ------------------------------------------------------------------------------
# Main code
# ------------------------------------------------------------------------------

# Ask the user their name.
puts "Name?"
name = gets
# The chomp ensures that the line break caused by hitting [RETURN] doesn't break
# anything.
name = name.chomp
puts "Hello #{name}.\n\n"

# Ask the user which operation they want to perform.
puts "Which operation do you wish to perform?\n"
puts "1. Addition\t2. Subtraction\t3. Multiplication\n"
puts "4. Division\t5. Modulo"
# Retrieve user input
operation = gets
# Chomps off the line break and converts type from 'string' to 'int'.
operation = operation.chomp.to_i

# Switch-case will execute differently depending on the value of 'operation'.
case operation
when 1 # Addition
  puts "Addition adds two numbers together. Formatted as \"x + y\".\n"
  # Retrieve input for x
  puts "Please enter for x."
  x = gets
  x = x.chomp.to_i
  # Retrieve input for y
  puts "Please enter for y."
  y = gets
  y = y.chomp.to_i
  # Calculate the result and print to shell
  answer = add(x, y)
  puts "The answer to #{x}+#{y} is #{answer}.\n"
when 2 # Subtraction
  puts "Subtraction subtracts one number from another. Formatted as \"x - y\".\n"
  # Retrieve input for x
  puts "Please enter for x."
  x = gets
  x = x.chomp.to_i
  # Retrieve input for y
  puts "Please enter for y."
  y = gets
  y = y.chomp.to_i
  # Calculate the result and print to shell
  answer = subtract(x, y)
  puts "The answer to #{x}-#{y} is #{answer}.\n"
when 3 # Multiplication
  puts "Multiplication multiplies a number by another number. Formatted as \"x * y\" or \"x × y\".\n"
  # Retrieve input for x
  puts "Please enter for x."
  x = gets
  x = x.chomp.to_i
  # Retrieve input for y
  puts "Please enter for y."
  y = gets
  y = y.chomp.to_i
  # Calculate the result and print to shell
  answer = multiply(x, y)
  puts "The answer to #{x}×#{y} is #{answer}.\n"
when 4 # Division
  puts "Division divides a number by another number. Formatted as \"x / y\" or \"x ÷ y\".\n"
  # Retrieve input for x
  puts "Please enter for x."
  x = gets
  x = x.chomp.to_f
  # Retrieve input for y
  puts "Please enter for y."
  y = gets
  y = y.chomp.to_f
  # Calculate the result and print to shell
  answer = divide(x, y)
  puts "The answer to #{x}÷#{y} is #{answer}.\n"
when 5 # Modulus
  puts "Modulo takes the remainder from a division operation. Formatted in code as \"x % y\". Formatted in math books as \"x mod y\".\n"
  # Retrieve input for x
  puts "Please enter for x."
  x = gets
  x = x.chomp.to_i
  # Retrieve input for y
  puts "Please enter for y."
  y = gets
  y = y.chomp.to_i
  # Calculate the result and print to shell
  answer = modulo(x, y)
  puts "The answer to #{x} mod #{y} is #{answer}.\n"
else # When the value of 'operation' doesn't match anything
  puts "That doesn't point to any operation... T_T\n"
end

# Send the user on their way.
puts "Have a nice day, #{name}!\n"
# Exits the program entirely
exit 0
