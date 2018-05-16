# Unique Words #

# Exception handling block- If invalid file is entered, rescue block handles error
begin
  # Asks for file name
  puts "Please input a file:"
  userFile = gets.chomp
  # Assigns user inputted file to file object
  file = File.new(userFile, "r")
rescue
  puts "File not found"
  exit
end

# Asks user to input a number
# All non-numbers result in 0
# All negative numbers become positive
puts "Please input a number:"
integer = gets.to_i.abs

# read() reads file in a a single string
# split() splits string to strings separated by
# whitespace and returns it as an array
array = file.read.split
# uniq() returns array with no duplicates
# first(integer) returns first n items of array as an array
array = array.uniq.first(integer)

puts array





