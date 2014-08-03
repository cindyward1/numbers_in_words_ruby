require "rspec"
require "numbers_in_words"

describe ("splitter") do

	it("turns the input '1' into [[1]]") do
		expect(splitter('1')).to eq [[1]]
	end

	it("turns the input '12' into [[1,2]]") do
		expect(splitter('12')).to eq [[1,2]]
	end

	it("turns the input '123' into [[1,2,3]]") do
		expect(splitter('123')).to eq [[1,2,3]]
	end

	it("turns the input '1234567' into [[1],[2,3,4],[5,6,7]]") do
		expect(splitter('1234567')).to eq [[1],[2,3,4],[5,6,7]]
	end

	it("turns the input '1234567890' into [[1],[2,3,4],[5,6,7]]") do
		expect(splitter('1234567890')).to eq [[1],[2,3,4],[5,6,7],[8,9,0]]
	end

end
