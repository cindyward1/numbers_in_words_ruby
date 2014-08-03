
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

def numbers_in_words
end

# splitter("1234567890")

