puts "Enter n:"
n = gets.to_i
fibonacci = -> (n, d = 1, f=1) {(1..n).map {|i| i > 2 ? (b = d + f; d = f; f = b) : 1 }}
puts "#{fibonacci.call(n)}"