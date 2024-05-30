# frozen_string_literal: true

# Cat class, inherits from mammal.rb
class Cat < Mammal
  def meow
    puts "#{@name} meows softly"
  end
end
