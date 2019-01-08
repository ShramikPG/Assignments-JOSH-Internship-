options = {
	'Rajma' => {'30' => 'Box8'},
	'Vada Pav' => {'50' => 'Box8','30' => 'Flavours'},
	'Dal' => {'20' => 'Box8', '10' => 'Lacovare'},
	'Sabji' => {'40' =>'Lacovare'},
	'Ice Cream' => {'10' => 'Flavours'},
	'Sandwich'=> {'20' => 'Flavours'},
	'Burger' => {'30' => 'Flavours'}
}
puts 'Enter Dish'
dish_in = gets.chomp
puts 'Enter Budget'
budget = gets.chomp
result =  Array.new
options[dish_in].each do |key , value|
	result << value if key.to_i <= budget.to_i
end
puts result