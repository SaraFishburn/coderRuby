class GoodDog
  attr_reader :breed, :age
  attr_accessor :name

  def initialize(name, breed, age)
    # @ variables are instance variables
    @name = name
    @breed = breed
    @age = age
  end

  def speak
    "#{@name} says Arf!"
  end
end

sparky = GoodDog.new('sparky', 'poodle', 4)
ted = GoodDog.new('ted', 'doberman', 6)

p sparky.speak
p ted.speak
p ted.name = 'fido'
p ted.name
p ted.breed
p ted.age
