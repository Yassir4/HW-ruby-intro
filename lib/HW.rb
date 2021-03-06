
#---------------------------------------------   PART 1 : Arrays, Hashes, and Enumerables -------------------------------------------
#this method takes an array of integers as an argument and returns the sum of its elements
def sum(array)
	s=0
	if array.length > 0
		array.each do |d|
			s+=d
		end
		return s
    else return 0
	end
end

#puts sum([1,2,3,4])

# this method takes an array of integers as an argument and returns the sum of its two largest elements
def max_2_sum(array)
	max1 = 0
	max2 = 0 
	sum = 0
	if array.length > 1
		max1 =array.sort[-1]
		max2 = array.sort[-2]
		sum = max1 + max2 
		return sum
		else if array.length == 1
			return array 
			else
				return 0
		end 
	end
end

#this method takes an array of integers and an additional integer
# n,as arguments and returns true if any two elements in the array of integers sum to n

def sum_to_n?(array,n)
	result = false
	if array.length  > 1
		for i in 1..array.length  - 1
			for j in 0..i - 1
				if array[j] + array[i] == n
					result = true
					break
				end
			end
		end
	end
	return result
end

#------------------------------------------------ PART 2 : Strings and Regular Expressions -----------------------------------------------

def hello(name)
	puts "hello #{name}"
end

#--check if the string begin with a constant 
def starts_with_consonant?(s) 
 	if 	/^[^aeiou\W]/i.match(s) == nil
 		return true
 	else
 		return false 
 	end
end

#puts starts_with_consonant?('shello')

 
 def binary_multiple_of_4?(s)
 	if  /^[01]*(00)$/.match(s)
  		return true
 	else
 		return false
 	end
 end


#------------------------------------------------ PART 3 : Object Oriented Basics -----------------------------------------------
class BookInStock 
	def initialize(isbn,price)
		@isbn=isbn
		@price=price
		# exeption 
		if @isbn.empty? || @price <= 0 
			raise ArgumentError
		end
	end
	
	attr_accessor :isbn
	attr_accessor :price

	def price_as_string
		"$#{'%.2f' %  @price}"
	end

end




