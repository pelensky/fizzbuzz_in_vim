class Fizzbuzz
	def is_divisible_by_three?(number)
		is_divisible_by?(3, number)
	end

	def is_divisible_by_five?(number)
		is_divisible_by?(5, number)
	end

	def is_divisible_by_fifteen?(number)
		is_divisible_by?(15, number)
	end

	def is_divisible_by?(divisor, number)
		number % divisor == 0
	end

	def play(number)
	end
end

describe Fizzbuzz do
	subject(:fizzbuzz) { described_class.new } 
	context "number is divisible by" do
		it "three" do
			expect(fizzbuzz.is_divisible_by_three?(3)).to be true
		end

		it "five" do
			expect(fizzbuzz.is_divisible_by_five?(5)).to be true
		end

		it "fifteen" do
			expect(fizzbuzz.is_divisible_by_fifteen?(15)).to be true
		end
	end

	context "number is not divisible by" do
		it "three" do
			expect(fizzbuzz.is_divisible_by_three?(4)).not_to be true
		end
		it "five" do
			expect(fizzbuzz.is_divisible_by_five?(2)).not_to be true
		end
		it "fifteen" do
			expect(fizzbuzz.is_divisible_by_fifteen?(2)).not_to be true
		end
	end
	context "game says" do
		it "fizz" do
			expect(fizzbuzz.play(3)).to eq "Fizz"
		end
		
		it "Buzz" do
			expect(fizzbuzz.play(5)).to eq "Buzz"
		end
	end
end

