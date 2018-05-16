# Statistics about a Matrix #

require 'matrix'

def matrix_stats(matrix)

  # Row and column sizes
  row_size = matrix.row_size.to_f
  col_size = matrix.column_size.to_f
  sum = 0.to_f

  print "Row Averages: "
  # Iterates over matrix rows
  0.upto(row_size - 1) do |i|
    # Iterates over each element in row
    matrix.row(i).each do |element|
      # Elements are added to sum
      sum += element.to_f
    end
    print (sum/col_size).to_s + " "
    # Resets sum to 0 after every row
    sum = 0
  end
  print "\n"

  # Iterates over matrix columns
  print "Column Averages: "
  # Iterates over each element in column
  0.upto(col_size - 1) do |i|
    matrix.column(i).each do |element|
      # Elements are added to sum
      sum += element.to_f
    end
    print (sum/row_size).to_s + " "
    # Resets sum to 0 after every column
    sum = 0
  end
  print "\n"
end

# Default matrix
matrix = Matrix[[1, 2, 3, 4], [5, 6, 7, 8], [9, 10, 11, 12]]
matrix_stats(matrix)
