def my_map!(arg)
  array = arg
  array.each_with_index do |elem, i|
    arg[i] = yield(elem)
  end
  arg
end
arr = [1,2,3]
puts my_map!(arr) { |n| n + 2}
puts arr
