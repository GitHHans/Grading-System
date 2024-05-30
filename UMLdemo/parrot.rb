# frozen_string_literal: true

# Parrot class, inherits from bird.rb
class Parrot < Bird
  def talk
    puts "#{@name} can imitate human speech"
  end
end
