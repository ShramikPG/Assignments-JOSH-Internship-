class Calculator
  attr_accessor :num1, :num2, :op
  def calculate
    self.num1.send(op.to_sym, num2)
  end
  def add
    self.num1 + self.num2
  end
  def subtract
     self.num1 - self.num2
  end
  def multiply
    self.num1 * self.num2 
  end
  def divide
    if self.num2 != 0
      (self.num1 / self.num2)
   else
      (puts 'Division By Zero')
    end
  end
end

oper = Calculator.new
puts 'Enter Num 1'
oper.num1 = gets.to_i
puts 'Enter Num 2'
oper.num2 = gets.to_i
puts "A.Enter Operation Choice\n 1.Add \t 2.Subtract \t 3. Multiply \t 4.Divide\nB.Enter Operator Manually (+,-,/,*)-Type B and hit enter"
choice = gets.chomp
case choice
  when '1'
    puts "Result is #{oper.add}"
  when '2'
    puts "Result is #{oper.subtract}"
  when '3'
    puts "Result is #{oper.multiply}"
  when '4'
    puts "Result is #{oper.divide}"
  when 'B'
    puts 'Enter Operation'
    oper.op = gets.chomp
    puts "Result is #{oper.calculate}"
  else
    puts 'Wrong Choice'
  end
