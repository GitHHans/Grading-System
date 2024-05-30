# frozen_string_literal: true
# Refactoring - change code in subtle ways to make it more maintainable without changing the behaviour
class Calculator
  def add(a, b)
    operation = 'sum'
    result = a + b
    puts "The #{operation} between #{a} and #{b} is #{result}."
  end

  def subtract(a, b)
    operation = 'difference'
    result = a - b
    puts "The #{operation} between #{a} and #{b} is #{result}."
  end
end

# TODO: add stuff :)
calculator = Calculator.new
calculator.add(5, 3)
calculator.subtract(7, 2)

# class Calculator
#   def add(a, b)
#     result = a + b
#     puts "The sum of #{a} and #{b} is #{result}."
#   end
#
#   def subtract(a, b)
#     result = a - b
#     puts "The difference between #{a} and #{b} is #{result}."
#   end
# end
#
# calculator = Calculator.new
# calculator.add(5, 3)
# calculator.subtract(7, 2)

# class Calculator
#   def add(a, b)
#     operation = "sum"
#     result = a + b
#     print_result(a, b, operation, result)
#   end
#
#   def subtract(a, b)
#     operation = "difference"
#     result = a - b
#     print_result(a, b, operation, result)
#   end
#
#   private
#
#   def print_result(a, b, operation, result)
#     puts "The #{operation} of #{a} and #{b} is #{result}."
#   end
# end
