options = {
	Box8: ["Rajma,30","Vada Pav,50","Dal,20"],
	Locavore: ["Dal,10","Vada Pav,30","Sabji,40"],
	Flovours: ["Ice Cream,10","Sandwich,20","Burger,30","Vada Pav,30"]
}
puts "Enter Dish"
dish = gets.chomp
puts "Enter Budget"
budget = gets.to_i
result = Array.new

for opt in options.keys #iterate over keys
	for val in options[opt] #iterate ove value of that key
		k = val.split(",")
		if (k.first == dish) && (k.last.to_i <= budget )
			result<<opt
		end
	end
end

if result.size > 0 
	puts result
else
	puts "incorrect input or zero result for your query"
end