# frozen_string_literal: true

require_relative 'module1'
require_relative 'module2'

class Main
  def initialize
    puts "Main class initialized"
  end

  def greet
    puts "Hello from Main class"
    Module1.new.say_hello
    Module2.new.say_hello
  end
end

if __FILE__ == $0
  main = Main.new
  main.greet
end