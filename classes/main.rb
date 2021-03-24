class Animal
  def to_s
    "#{@name} is #{@breed}"
  end
end

class GoodDog
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

class Cat < Animal 
  def initialize(name, breed)
    @name = name
    @breed = breed
  end

  def speak
    "#{@name} says Meow!"
  end
end

sparky = GoodDog.new('sparky', 'poodle', 4)
ted = GoodDog.new('ted', 'doberman', 6)

p sparky.speak

puts ted
p ted.speak

# class methods
puts GoodDog.what_am_i
puts GoodDog.total_dogs

felix = Cat.new('felix', 'siamese')
puts felix.speak
puts felix
