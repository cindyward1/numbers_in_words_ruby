require "rspec"
require "numbers_in_words"

describe ("splitter") do

	it("turns the input '1' into [[1]]") do
		expect(splitter('1')).to eq [[1]]
	end

end
