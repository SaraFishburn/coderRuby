require_relative 'modules/swimmable'
require_relative 'classes/good_dog'
require 'colorize'

class Animal
  def to_s
    "#{@name} is #{@breed}"
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
puts felix.speak.colorize(:blue)
puts felix
puts sparky.swim.colorize(:magenta)

puts 'This is blue text on red'.blue.on_red
puts 'This is red on blue'.colorize(:red).on_blue
puts 'This is red on blue and underline'.colorize(:red).on_blue.underline
puts 'This is blue text on red'.blue.on_red.blink
puts 'This is uncolorized'.blue.on_red.uncolorize
puts "This is light blue with red background".colorize(:color => :light_blue, :background => :red)
puts "This is light blue with red background".colorize(:light_blue ).colorize( :background => :red)
