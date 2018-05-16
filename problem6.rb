# Golomb Sequence #

def golomb(num)

  # Base case
  if (num == 1)
    return num
  else
    # Recursive statement
    # Calls golomb() 3 more times each time it's called
    return 1 + golomb(num - golomb(golomb(num - 1)))
  end
end

puts "Please enter an integer greater than 0: "
num = gets.to_i
while (num < 1)
  puts "Invalid input."
  puts "Please enter an integer greater than 0: "
  num = gets.to_i
end

new_num = golomb(num)
puts "The Golomb number of " + num.to_s + " is: " + new_num.to_s

# Uses Time object to compute the start and end time
start = Time.now
new_num = golomb(50)
finish = Time.now
puts "The Golomb number of " + 50.to_s + " is: " + new_num.to_s
# Have to do finish-start in order to find the time in seconds
puts "It took " + (finish-start).to_s + " seconds to compute the Golomb number of 50."