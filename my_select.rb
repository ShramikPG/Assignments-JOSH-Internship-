def my_select(arg)
  array = []
  arg.each do |elem|
  	array << (yield(elem)? elem : nil)
  end
  array.compact
end
arr = [1, 2, 3]
puts arr
puts '------------------------------'
puts my_select(arr) { |n| n > 2 }
puts '------------------------------'
puts "original array: #{arr}"