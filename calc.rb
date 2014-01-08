# Your code goes her
def add(num1, num2)
	return num1+num2
end

def minus(num1, num2)
	return num1-num2
end

def plus(num1, num2)
	return num1*num2
end

def divide(num1, num2)
	return num1/num2
end

def exponents(num1, num2)
	return num1**num2
end

def square(num1)
	return num1*num1
end

def cube(num1)
	return num1*num1*num1
end

def square_root(num1)
	return Math.sqrt(num1)
end

def sine(num1)
	j = 1
	num1 = num1 * Math::PI/180
	k = num1
	while j<=100
		num1 *= (-1)*num1*num1/(2*j)/(2*j+1)
		k += num1
		j += 1
	end
	return k
end

def cosine(num1)
	j = 2
	num1 = num1 * Math::PI/180
	num1 = (-1)*num1*num1/2
	k = num1
	while j<=100
		num1 *= (-1)*num1*num1/(2*j)/(2*j-1)
		k += num1
		j += 1
	end
	return 1+k
end

def operation
	return gets.chomp.to_s
end

def yield_output(output)
	puts output
end

puts "Directly input the number and the operation to use the calculator!"
num1 = gets.chomp.to_f
text = operation

if text == "+"
	num2 = gets.chomp.to_f
	add_result = add(num1, num2)
	yield_output add_result
elsif text == "-"
	num2 = gets.chomp.to_f
	minus_result = minus(num1, num2)
	yield_output minus_result
elsif text == "*"
	num2 = gets.chomp.to_f
	plus_result = plus(num1, num2)
	yield_output plus_result
elsif text == "/"
	num2 = gets.chomp.to_f
	divide_result = divide(num1, num2)
	yield_output divide_result
elsif text == "^"
	num2 = gets.chomp.to_f
	exponents_result = exponents(num1, num2)
	yield_output exponents_result
elsif text == "^2"
	square_result = square(num1)
	yield_output square_result
elsif text == "^3"
	cube_result = cube(num1)
	yield_output cube_result
elsif text == "^0.5"
	square_root_result = square_root(num1)
	yield_output square_root_result
elsif text == "sine"
	sine_result = sine(num1)
	yield_output sine_result
elsif text == "cosine"
	cosine_result = cosine(num1)
	yield_output cosine_result
elsif text == "tangine"
	sine_result = sine(num1)
	cosine_result = cosine(num1)
	yield_output (sine_result/cosine_result)
end



