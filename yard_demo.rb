# This is a brief description of the YardDemo class.
#
# Detailed description of the class and its purpose can go here.
#
# @example
#   obj = YardDemo.new
#   obj.some_method(6, 10)
#
class YardDemo
  # This method takes two parameters, x and y, and prints a message
  # based on whether x is greater than 5.
  #
  # @param x [Integer] the first parameter.
  # @param y [Integer] the second parameter.
  # @return [void]
  def check(x, y)
    if x > 5
      puts "x is greater than 5"
    else
      puts "x is not greater than 5"
    end
  end
end

