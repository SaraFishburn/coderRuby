# #Exceptions

# # puts 'Enter your age'
# # age = gets.chomp.to_i
# # birth_year = Time.now.year - age
# # puts "You were born in #{birth_year}!"

# def divide(num1, num2)
#   num1 = num1.to_i
#   num2 = num2.to_i
#   puts num1
#   puts num2
#   puts "result is #{num1 / num2}"
# # rescue TypeError
# #   puts 'Please enter numbers only'
# # rescue ZeroDivisionError
# #   puts 'Cannot divide by zero'
# rescue Exception => e
#   puts e.full_message
# end

# puts 'Enter two numbers'
# num1 = gets
# num2 = gets

# divide(num1, num2)

class InsufficientFunds < StandardError
  def initialize(msg='Not enough funds')
    super(msg)
  end
end

balance = 10

def withdraw(balance, amount)
  raise InsufficientFunds.new('hello!') if amount > balance

  balance -= amount
  balance
end

begin
  withdraw(balance, 20)
  puts balance
rescue InsufficientFunds => e
  puts "ERROR: #{e.message}"
end
