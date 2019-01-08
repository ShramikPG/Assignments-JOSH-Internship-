options = {
	Box8: {Rajma: 30, VadaPav: 50,Dal: 20},
	Locavore: {Dal: 10,VadaPav: 30,Sabji: 40},
	Flovours: {IceCream: 10,Sandwich: 20,Burger: 30,VadaPav: 30}
}
puts "Enter Dish"
dish_in = gets.chomp
puts "Enter Budget"
budget = gets.to_i
result = Array.new
options.each do |hotel, dishes_with_price |
	byebug
 a = dishes_with_price.select{|dish,price| dish.to_s == dish_in && budget >= price }
 result << hotel if a.count > 0
end
if result.size>0
	puts result
else
	puts "No Resut for your Query"
end