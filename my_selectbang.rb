def my_select!(arg)
  array = arg
  array.each_with_index do |elem, i|
  #yield(elem)? (arg[i] = elem) : (arg[i] = nil)
  arg[i] = yield(elem)? elem : nil
  end
  arg.compact
end
arr = [1,2,3]
puts arr
puts "------------------------------"
puts my_select!(arr) { |n| n > 2}
