# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  val = 0
  i = 0
  while i < arr.count
    val=val+arr[i]
    i=i+ 1
  end
  # return result of sum
  val
end

def max_2_sum arr
    val=0
    if arr.length==0
      val=0
    elsif arr.length==1
      val=arr[0]
    else
      largest=arr.max
      array=arr-[largest]
      second_largest=arr.max
      val=largest+second_largest
    end
end

def sum_to_n? arr, n
    (arr.empty? && n.zero?) || arr.permutation(2).any? { |a, b| a + b == n }
end

# Part 2

def hello(name)
    puts "Hello, "+name+"!"
end

def starts_with_consonant? s
  	/^[b-df-hj-np-tv-z]/i.match(s) != nil ||	/^[1,2,3,4,5,6,7,8,9,0]/i.match(s) != nil || /^[~,!,@,#,$,%,^,&,*,(,),_,+,=]/i.match(s) != nil
end

def binary_multiple_of_4? s
  	return true if s == "0"
	/^[10]*00$/.match(s) != nil
end

# Part 3

class BookInStock
	attr :isbn
	attr :price

	def initialize(isbn, price)
		raise ArgumentError, 
			"Illegal argument" if isbn.empty?  || price <= 0
		@isbn = isbn
		@price = price
	end

	def price_as_string
		sprintf("$%2.2f", @price)
	end
end
