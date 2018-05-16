# Sorting Words by Their Value #

def sort_array(string)
  # Holds ASCII values grouped with respective string
  # i.e. array[0] = [326, "hey"]
  array = []
  # Holds sorted array
  sorted_array = []
  # Holds sum of ASCII values
  sum = 0

  # Loops though each element in string array
  string.each do |item|
    # Loops through each character of each item
    item.each_byte do |c|
      sum += c
    end
    # Pushes key, value pair into array
    array.push([sum, item])
    sum = 0
  end

  # Sorts array based on first element of each grouping
  # First element if ASCII sum
  array = array.sort_by(&:first)

  # Pushes string into new array
  array.each do |item|
    sorted_array.push(item[1])
  end
  print sorted_array, "\n"
end

# Default array to hold strings
string = %w(hey ho let's go hey ho let's go)
sort_array(string)
