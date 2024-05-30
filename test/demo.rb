# demo.rb
# Note the last value a method returns is the last value
class Demo
  def hello_world
    "Hello world"
  end

  def add(a, b)
    a + b
  end

  def subtract(a, b)
    a - b
  end

  def add_ten(a)
    i = a
    while i < 10
      i += 1
    end
    i
  end
end