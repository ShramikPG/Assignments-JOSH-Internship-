begin
	puts "Enter First Number"
	num1 = Integer(gets.chomp)
	puts "Enter Operator"
	op = gets.chomp
	puts "Enter Second Number"
	num2 = Integer(gets.chomp)
rescue
	puts "Please Enter Integer Values"	
	retry
end

case op
	when '+'
	  puts num1.to_i + num2.to_i
	when '-'
	  puts num1.to_i - num2.to_i
	when '*'
	  puts num1.to_i * num2.to_i
	when '/'
		unless num2 == 0
	  	puts "#{num1.to_i / num2.to_i}"
		else
			puts "Division By Zero"
		end
	else
	  puts "Invalid operation"
	end

 
