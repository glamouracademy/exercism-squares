class Squares

	def initialize(number)
		@number = number
		@number_list = (1..@number).to_a
	end

	def square_of_sums
		@number_list.inject(:+)**2
	end

	def sum_of_squares
		squared_array = []
		@number_list.each do |number|
			squared_array << number ** 2
		end

		squared_array.inject(:+)
			
	end

	def difference
		square_of_sums - sum_of_squares
	end

end