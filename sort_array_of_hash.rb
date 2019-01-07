arr = [
			{numbers: [1,2,3,4]},
			{numbers: [1,2,3]},
			{numbers: [1,2,3,4,5,6]},
			{numbers: [1]}			
			]
puts "--------------"
puts "Initial Array: "
puts arr
puts "---------------"
arr.sort_by!{|element| element[:numbers].count }
puts "Sorted array on the basis of values of hash of the element"
puts arr
puts "---------------"