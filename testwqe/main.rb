require_relative 'hello'

class Main
  person = Hello.new
  puts person.say_hello
end