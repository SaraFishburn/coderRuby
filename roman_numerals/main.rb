def main
  numerals = { 1 => 'I', 5 => 'V', 10 => 'X', 50 => 'L', 100 => 'C', 500 => 'D', 1000 => 'M' }

  puts 'Number to be converted to roman numerals:'
  input = gets.chomp.to_i
  loop do
    puts "Conversion: #{num_to_roman_numeral(numerals, input)}\n\n"
    puts 'Convert another number? (y/n)'
    response = gets.chomp.downcase
    case response
    when 'y'
      puts 'Number to be converted to roman numerals:'
      input = gets.chomp.to_i
    when 'n'
      puts 'Goodbye'
      break
    else
      puts "ERROR: INVALID INPUT response must be 'y' or 'n'"
    end
  end
end

def generate_array(numerals, input)
  arr = []
  numerals.each_key do |key|
    next if key > input && !check_special_case(input, key)

    arr << key
  end
  arr
end

def check_special_case(input, key)
  if key.to_s[0] == '1'
    return key / 10 if input >= (key - (key / 10)) && input < key
  elsif input >= key - (key / 5) && input < key
    return key / 5
  end
  false
end

def special_conversion(numerals, key, input, result)
  special = check_special_case(input, key)
  return [result, input] unless special

  result += "#{numerals[special]}#{numerals[key]}"
  input -= (key - special)
  [result, input]
end

def num_to_roman_numeral(numerals, input)
  arr = generate_array(numerals, input)
  result = ''
  arr.reverse.each do |key|
    while input >= key
      result += numerals[key]
      input -= key
    end
    result, input = special_conversion(numerals, key, input, result)
  end
  result
end

main
