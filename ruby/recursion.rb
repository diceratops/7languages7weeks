#recursion -- in this case, solving a problem from the bottom up
#defines a method called factorial
# n! = n * (n-1)!
#factorial 4 equals 4*3*2*1
#4 factorial = 4! = 4 x 3 x 2 x 1
#we can also write this as 4! = 4 * 3!

#now we can write 3! as 3 * 2!
#and then we can write 2! factorial as 2 * 1!
#we always know what 1! is, its 1

def factorial(n)
	if n == 1 
		return 1
	else
		n * factorial(n-1)
	end
end

puts factorial(3)
