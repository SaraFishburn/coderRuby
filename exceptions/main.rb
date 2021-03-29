#Exceptions

puts 'Enter your age'
age = gets.chomp.to_i
birth_year = Time.now.year - age
puts "You were born in #{birth_year}!"
