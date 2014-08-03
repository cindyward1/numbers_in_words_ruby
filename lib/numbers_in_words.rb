
def splitter(input_number_string)

	input_number_array = input_number_string.split(//)
	input_number_array.reverse!
	number_2d_array = []
	group_of_3 = []
	input_number_array.each do |number_string|
		group_of_3.push(number_string.to_i)
		if group_of_3.length == 3
			number_2d_array.push(group_of_3.reverse!)
			group_of_3 = []
		end
	end

	if input_number_array.length % 3 != 0
		number_2d_array.push(group_of_3.reverse!)
	end
	
	return number_2d_array.reverse!

end


def numbers_in_words(input_number_string)

	ones_words = { 	0=>"", 1=>"one", 2=>"two", 3=>"three", 4=>"four", 5=>"five", 6=>"six", 7=>"seven", 8=>"eight", 9=>"nine",
									10=>"ten", 11=>"eleven", 12=>"twelve", 13=>"thirteen", 14=>"fourteen", 15=>"fifteen", 16=>"sixteen",
									17=>"seventeen", 18=>"eighteen", 19=>"nineteen", 20=>"twenty", 30=>"thirty", 40=>"forty", 50=>"fifty", 
									60=>"sixty", 70=>"seventy", 80=>"eighty", 90=>"ninety" }

	power_words = {1=>"", 100=>"hundred", 1000=>"thousand", 1000000=>"million", 1000000000=>"billion", 1000000000000=>"trillion"}

	puts "Welcome to the Numbers in Words Ruby method"
	puts "\n"

	# input_number_string = ""

	while input_number_string != "x"

		# puts "Please enter a number in numeric format that you would like translated into words."
		# puts "The number may range between 1 and 999,999,999,999.
		# puts "You may enter 'x' to exit the method.""
		# puts "\n"
	
		# input_number_string = gets.chomp.downcase
		if input_number_string != "x"
			input_number = input_number_string.to_i
			output_words_string = ""
			if input_number <= 0 || input_number >= 1e12
				puts "Invalid number #{input_number.to_s} entered, please try again or enter 'x' to exit the method"
				input_number_string = "x"
			else
				number_2d_array = splitter(input_number_string)
				current_magnitude = 10 ** (number_2d_array.length + 1)
				number_2d_array.each do |power_array|
					current_power = power_array.length - 1
					is_teens = false
					power_array.each_with_index do |number, number_index|			
						if current_power == 2
							output_words_string += (" " + ones_words.fetch(number))
							output_words_string += (" " + power_words.fetch(10 ** current_power))
							current_power -= 1
							current_magnitude /= 10
						elsif current_power == 1
							if number > 1
								output_words_string += (" " + ones_words.fetch(number * 10))
							elsif number == 1
								is_teens = true
							end
							if number_index == 0
								current_magnitude /= 10
							end
							current_power -= 1
							current_magnitude /= 10
						else
							if is_teens
								number += 10
								is_teens = false
							end
							output_words_string += (" " + ones_words.fetch(number))
							if number_index == 0
								current_magnitude /= 100
							end
						end
					end
					output_words_string += (" " + power_words.fetch(current_magnitude))
				end
				return output_words_string.rstrip!.lstrip!
				# puts "Input number = #{input_number_string}, output number in words = #{output_words_string}"
				# puts "\n"
				# input_number_string = "x"
			end
		end
	end
end

# numbers_in_words("3")
