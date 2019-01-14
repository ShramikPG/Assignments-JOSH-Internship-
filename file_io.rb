a = ->(file_name) { system("chmod 755 #{file_name}") }
retries = 0
begin
  puts 'Enter File Name'
  f_name = gets.chomp
  file_o = File.open(Dir.pwd + '/' + f_name, 'r+')
  puts 'enter word to searched:'
  word = gets.chomp
  arr = []
  file_o.each_with_index do |line, index|
    arr << index + 1 if line.gsub(/['?.!,"]/, '').split(' ').include? word
  end
  print "The lines where the word can found are: #{arr} \n"
rescue Errno::ENOENT
  puts 'File Not found, recheck your input!'
  retries += 1
  puts "You cannot retry more than 3 times, retries: #{retries}"
  retry if retries < 3
rescue Errno::EACCES
  puts 'File Not Readable, changing access mode, retry entering the name.'
  a.call(f_name)
  retries += 1
  puts "You cannot retry more than 3 times, retries: #{retries}"
  retry if retries < 3
end
