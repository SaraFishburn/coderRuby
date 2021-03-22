# arr = [1, 2, 3, 4, 5]

# arr.each { |num| puts num + 5 }

# def do_something
#   yield
# end

# do_something { puts 'hello world' }

def add(num1, num2)
  yield num1 + num2
end

add(5, 10) { |answer| puts "the answer is #{answer}" }
