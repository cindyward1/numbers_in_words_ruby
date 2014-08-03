require "rspec"
require "numbers_in_words"

describe ("splitter") do

	it("turns the input '1' into [[1]]") do
		expect(splitter("1")).to eq [[1]]
	end

	it("turns the input '12' into [[1,2]]") do
		expect(splitter("12")).to eq [[1,2]]
	end

	it("turns the input '123' into [[1,2,3]]") do
		expect(splitter("123")).to eq [[1,2,3]]
	end

	it("turns the input '1234567' into [[1],[2,3,4],[5,6,7]]") do
		expect(splitter("1234567")).to eq [[1],[2,3,4],[5,6,7]]
	end

	it("turns the input '1234567890' into [[1],[2,3,4],[5,6,7]]") do
		expect(splitter("1234567890")).to eq [[1],[2,3,4],[5,6,7],[8,9,0]]
	end

end


describe ("numbers_in_words") do

	it("returns the correct string for numbers 1-9") do
		expect(numbers_in_words("1")).to eq "one"
	end

	it("returns the correct string for number 10") do
		expect(numbers_in_words("10")).to eq "ten"
	end

	it("returns the correct string for number 11-19") do
		expect(numbers_in_words("15")).to eq "fifteen"
	end

	it("returns the correct string for number 20-99") do
		expect(numbers_in_words("20")).to eq "twenty"
	end

	it("returns the correct string for number 99") do
		expect(numbers_in_words("99")).to eq "ninety nine"
	end

	it("returns the correct string for number 100") do
		expect(numbers_in_words("100")).to eq "one hundred"
	end

	it("returns the correct string for number 100") do
		expect(numbers_in_words("101")).to eq "one hundred one"
	end

	it("returns the correct string for number 999") do
		expect(numbers_in_words("999")).to eq "nine hundred ninety nine"
	end

	it("returns the correct string for number 1000") do
		expect(numbers_in_words("1000")).to eq "one thousand"
	end

	it("returns the correct string for number 1001") do
		expect(numbers_in_words("1001")).to eq "one thousand one"
	end

	it("returns the correct string for number 9999") do
		expect(numbers_in_words("9999")).to eq "nine thousand nine hundred ninety nine"
	end

	it("returns the correct string for number 100,000") do
		expect(numbers_in_words("100000")).to eq "one hundred thousand"
	end

	it("returns the correct string for number 999,999") do
		expect(numbers_in_words("999999")).to eq "nine hundred ninety nine thousand nine hundred ninety nine"
	end

	it("returns the correct string for number 1,000,000,000,000") do
		expect(numbers_in_words("1000000000000")).to eq "one trillion"
	end

	it("returns the correct string for number 999,999,999,999,999") do
		expect(numbers_in_words("999999999999999")).to eq "nine hundred ninety nine trillion nine hundred ninety nine billion nine hundred ninety nine million nine hundred ninety nine thousand nine hundred ninety nine"
	end	

end
