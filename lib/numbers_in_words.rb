def splitter(input_number_string)

	input_number_array = input_number_string.split(//)
	number_2d_array = []
	group_of_3 = []
	input_number_array.each do |number_string|
		group_of_3.push(number_string.to_i)
	end

	number_2d_array.push (group_of_3)
	return number_2d_array

end

def numbers_in_words
end

# splitter("1")
