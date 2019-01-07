def my_map(arr)
	array = arr
  ary = []
  array.each do |elem|
    ary << yield(elem)
  end
  ary
end
arr = [1,2,3]
puts my_map(arr) { |n| n + 2}
