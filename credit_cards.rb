# Original solution - Do not alter this code!!!!!!
=begin
class CreditCard

	def initialize(hash)
		@name = hash[:name]
		@card_number = hash[:card_number]
		@company = hash[:company]
		@code = hash[:code]
		@valid = hash[:valid]
		@zip = hash[:zip]
	end

	def name
		@name
	end

	def name!(new_name)
		@name = new_name
	end

	def card_number
		"XXXX-XXXX-XXXX-#{last_four_digits(my_card_number)}"
	end

	def company
		@company
	end

	def check_code(number)
		@code == number
	end

	def valid(status)
		@valid = status
	end

	def valid?
		@valid == true
	end

	def zip
		@zip
	end

	def new_zip(new_zip)
		@zip = new_zip
	end

private

	def my_card_number
		@card_number
	end

	def last_four_digits(number)
		number.to_s.split("").drop(12).join("")
	end
end


my_card = CreditCard.new( {name: "John Mitchell",
													 card_number: 2444468277795679,
													 company: "VISA",
													 code: 123,
													 valid: true,
													 zip: 23456} )
p my_card.name # > > > > > > > > > > > > > > > > > > > > > > > > > > "John Mitchell"




p my_card.name!("Elias") # => > > > > > > > > > > > > > > > > > > > "Elias"
p my_card.name #> > > > > > > > > > > > > > > > > > > > ===========>"Elias"

p my_card.card_number #====> > > > > > > > > > > > > > > > > > > > "XXXX-XXXX-XXXX-5679"


p my_card.company #=======> > > > > > > > > > > > > > > > > > > > "VISA"


p my_card.check_code(123)#> > > > > > > > > > > > > > > > > > > > true

p my_card.zip#++++++++++++++++++++++++++++++++++++++++++++++++++<>>23456
p my_card.new_zip(60060)#> > > > > > > > > > > > > > > > > > > > 60060

p my_card.valid? == true #> > > > > > > > > > > > > > > > > > > true

p my_card.valid(false)#> > > > > > > > > > > > > > > > > > > > false

p my_card

=end
# Refactored Code - after playing with calling all the methods, copy and paste the original code here, then refactor.
class CreditCard
	attr_accessor :name ,:zip,:valid
	attr_reader :company
	attr_writer :code 
	def initialize(hash)
		@name = hash[:name]
		@card_number = hash[:card_number]
		@company = hash[:company]
		@code = hash[:code]
		@valid = hash[:valid]
		@zip = hash[:zip]
	end

	def card_number
		"XXXX-XXXX-XXXX-#{last_four_digits(my_card_number)}"
	end

private

	attr_reader :card_number

	def last_four_digits(number)
		number.to_s.split("").drop(12).join("")
	end
end

# DRIVER CODE AREA

my_card = CreditCard.new( {name: "John Mitchell",
													 card_number: 2444468277795679,
													 company: "VISA",
													 code: 123,
													 valid: true,
													 zip: 23456} )

p my_card.name # > > > > > > > > > > > > > > > > > > > > > > > > > > "John Mitchell"




p my_card.name = "Elias" # => > > > > > > > > > > > > > > > > > > > "Elias"
p my_card.name #> > > > > > > > > > > > > > > > > > > > ===========>"Elias"

p my_card #====> > > > > > > > > > > > > > > > > > > > "XXXX-XXXX-XXXX-5679"


p my_card.company #=======> > > > > > > > > > > > > > > > > > > > "VISA"


p my_card.code = 123#> > > > > > > > > > > > > > > > > > > > true

p my_card.zip#++++++++++++++++++++++++++++++++++++++++++++++++++<>>23456
p my_card.zip = 60060#> > > > > > > > > > > > > > > > > > > > 60060
p my_card.zip#++++++++++++++++++++++++++++++++++++++++++++++++++<>>23456

p my_card.valid = true #> > > > > > > > > > > > > > > > > > > true

p my_card.valid == (false)#> > > > > > > > > > > > > > > > > > > > false

p my_card


#Reflect

# What are private methods
#private methods are method that arent accesible and cant be called on 
#

# When do you use attr_reader?
#methods that return the value of the instance variable

#

# When do you use attr_writer?
#methods that let you pass in and argument and change the value of the instance variable
#

# When do you use attr_accessor?
# attr_accessor let you read and write the instace variable by calling the method on it

