
def find_min_in_nested_arrays(src)
  # src will be an array of arrays of integers
  # Produce a new Array that contains the smallest number of each of the nested arrays
  outer_arr = []
  row_index = 0
  while row_index < src.length do
    inner_length = src[row_index].length
    small_num = 100
    column_index = 0
    while column_index < inner_length do
      if src[row_index][column_index] < small_num
        small_num = src[row_index][column_index]
      end
      column_index += 1
    end
    outer_arr << small_num
    row_index += 1
  end
  outer_arr
end
