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

def divide (num1, num2)
	return num1/num2
end

def operation
	puts "asdfsadfasdfasfd"
	return gets.chomp.to_s
end

def yield_output(output)
	puts output
end

text = operation

if text == "+"
	num1 = gets.chomp.to_f
	puts "+"
	num2 = gets.chomp.to_f
	add_result = add(num1, num2)
	yield_output add_result
elsif text == "-"
	num1 = gets.chomp.to_f
	puts "-"
	num2 = gets.chomp.to_f
	minus_result = minus(num1, num2)
	yield_output minus_result
elsif text == "*"
	num1 = gets.chomp.to_f
	puts "*"
	num2 = gets.chomp.to_f
	plus_result = plus(num1, num2)
	yield_output plus_result
else
	num1 = gets.chomp.to_f
	puts "/"
	num2 = gets.chomp.to_f
	divide_result = divide(num1, num2)
	yield_output divide_result
end


