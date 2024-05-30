# frozen_string_literal: true

# Dog class, inherits from mammal.rb
class Dog < Mammal
  def bark
    puts "#{@name} barks loudly"
  end
end
