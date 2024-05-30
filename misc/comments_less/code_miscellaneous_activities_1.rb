# frozen_string_literal: true
#
# Person class represents an individual with a name and age.
class Person
  def initialize(name, age)
    @name = name
    @age = age
  end

  attr_reader :name, :age

  def update_age(new_age)
    @age = new_age
  end

  def update_name(new_name)
    @name = new_name
  end

  def greet
    "Hello, my name is #{@name} and I'm #{@age} years old."
  end

  private

  def calculate_birth_year
    Time.now.year - @age
  end

  protected

  def format_info
    "Name: #{@name}, Age: #{@age}"
  end
end
