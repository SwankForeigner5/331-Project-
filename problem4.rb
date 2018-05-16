# Total numbers generated 
num = 0.to_f
# Sum of numbers generated 
sum = 0.to_f
x = 0

puts "Random Loop (Press any key to stop)" 
loop do
  # stty used to get non_interrupting input from user 
  system("stty raw -echo")
  char = STDIN.read_nonblock(1) rescue nil
  system("stty -raw echo")
  # Ends loop if user had pressed any key 
  break if /./ =~ char

  # Outputs random number between 0 and 1 
  x = rand(2)
  puts x
  # Staggers program output by 1 second 
  sleep(1)
  num += 1
  sum += x
end


puts "The total number of randoms numbers generated was " + num.to_i.to_s + "." 
puts "The average value of the numbers generated was " + (sum/num).to_s + "." 


