# 1). Create a class to model a physical calculator. Class Methods: Each of these methods accept two arguments value1 and value2 and output the result as a return value.

class Calculator
  def initialize(value1, value2)
    @value1 = value1
    @value2 = value2
  end

  attr_accessor :value1, :value2

  def add()
    @value1 + @value2
  end

  def subtract()
    @value1 - @value2
  end

  def multiply()
    @value1 * @value2
  end

  def divide()
    @value1 / @value2
  end
end

cal = Calculator.new(15, 30)

puts cal.add
puts cal.subtract
puts cal.multiply
puts cal.divide

# 2). Create a class to model an elevator.
#go_up, go_down, floor, cheery_greeting display on every floor.
#prevent the go_up method past the 12th floor, prevent go_down method below the 1st floor.

class Elevator
	def initialize
		puts "first floor"
		@floor = 1
	end

	def go_up
		puts "Going up, #{@floor}"
		requestedfloor = gets.chomp.to_i

		if requestedfloor > @floor
			@floor = requestedfloor
			puts "Next floor #{@floor}"
		else
			puts "This is incorrect, you must enter a higher floor number"
		end
	end

	def go_down
    puts "Going down, Floor # #{@floor}"
		requestedfloor = gets.chomp.to_i

		if requestedfloor < @floor
			@floor = requestedfloor
			puts "You're currently on #{@floor}"
		else
			puts "This is incorrect, you must enter a lower floor number"
		end
	end

	def cheery_greeting
		puts "Welcome! You're currently on Floor # #{@floor}"
	end
end

first_ride = Elevator.new
first_ride.go_up
first_ride.go_down
first_ride.cheery_greeting
