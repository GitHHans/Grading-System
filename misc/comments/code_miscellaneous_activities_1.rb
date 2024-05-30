# frozen_string_literal: true

# Person class represents an individual with a name and age.
class Person
  # Initializes a new Person object.
  #
  # @param [String] name The name of the person.
  # @param [Integer] age The age of the person.
  # @example
  #   person = Person.new("John Doe", 30)
  def initialize(name, age)
    @name = name
    @age = age
  end

  # Retrieves the name of the person.
  #
  # @return [String] The name of the person.
  # @example
  #   person = Person.new("Alice", 25)
  #   puts person.name # Output: "Alice"
  attr_reader :name

  # Retrieves the age of the person.
  #
  # @return [Integer] The age of the person.
  # @example
  #   person = Person.new("Bob", 40)
  #   puts person.age # Output: 40
  attr_reader :age

  # Updates the age of the person.
  #
  # @param [Integer] new_age The new age of the person.
  # @return [Integer] The updated age.
  # @example
  #   person = Person.new("Eve", 35)
  #   person.update_age(36)
  #   puts person.age # Output: 36
  def update_age(new_age)
    @age = new_age
  end

  # Updates the name of the person.
  #
  # @param [String] new_name The new name of the person.
  # @return [String] The updated name.
  # @example
  #   person = Person.new("Adam", 24)
  #   person.update_name("Steve")
  #   puts person.name # Output: Steve
  def update_name(new_name)
    @name = new_name
  end

  # Greets the person.
  #
  # @return [String] A friendly greeting.
  # @example
  #   person = Person.new("Charlie", 50)
  #   puts person.greet # Output: "Hello, my name is Charlie and I'm 50 years old."
  # @note The greeting includes the name and age of the person.
  def greet
    "Hello, my name is #{@name} and I'm #{@age} years old."
  end


  protected

  # Helper method to format the person's information.
  #
  # @return [String] Formatted information.
  # @example
  #   person = Person.new("Emily", 45)
  #   puts person.format_info # Output: "Name: Emily, Age: 45"
  def format_info
    "Name: #{@name}, Age: #{@age}"
  end

  private

  # Calculate the birth year of the person.
  #
  # @return [Integer] The birth year.
  # @example
  #   person = Person.new("David", 28)
  #   puts person.calculate_birth_year # Output: Current year - 28
  def calculate_birth_year
    Time.now.year - @age
  end
end
