def calculate(num1,num2,op)
	num1.send(op,num2)
end
begin
	puts "Enter First Number and Second Number"
	inputarr = [Integer(gets.chomp),Integer(gets.chomp)]
	puts "Enter Operator"
	op = gets.chomp.to_sym
rescue
	puts "Please Enter Integer Values"	
	retry
end
puts calculate(inputarr.first,inputarr.last,op)

 
