
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

	ones_words = { 0=>"", 1=>"one", 2=>"two", 3=>"three", 4=>"four", 5=>"five", 6=>"six", 7=>"seven", 8=>"eight", 9=>"nine" }

	teens_words = { 10=>"ten", 11=>"eleven", 12=>"twelve", 13=>"thirteen", 14=>"fourteen", 15=>"fifteen", 16=>"sixteen",
					17=>"seventeen", 18=>"eighteen", 19=>"nineteen" }

	tens_words = { 2=>"twenty", 3=>"thirty", 4=>"forty", 5=>"fifty", 6=>"sixty", 7=>"seventy", 8=>"eighty", 9=>"ninety" }

	power_words = {100=>"hundred",1000=>"thousand", 1000000=>"million", 1000000000=>"billion", 1000000000000=>"trillion"}

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
				number_2d_array.each_with_index do |power_array, power_index|
					current_power = power_array.length - 1
					power_array.each do |number, number_index|
						output_words_string += ones_words.fetch(number)
					end
				end
				return output_words_string
				# puts "Input number = #{input_number_string}, output number in words = #{output_words_string}"
				# puts "\n"
				# input_number_string = "x"
			end
		end
	end
end

# numbers_in_words("1")
# numbers_in_words("3")


