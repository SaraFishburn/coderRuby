class GoodDog
  include Swimmable

  attr_reader :breed, :age
  attr_accessor :name

  @@number_of_dogs = 0

  def initialize(name, breed, age)
    # @ variables are instance variables
    @name = name
    @breed = breed
    @age = age
    @@number_of_dogs += 1
  end

  def self.what_am_i
    'i am a good dog class!'
  end

  def self.total_dogs
    @@number_of_dogs
  end

  def speak
    "#{@name} says Arf!"
  end
end