def find_min_in_nested_arrays(src)
  # src will be an array of arrays of integers
  # Produce a new Array that contains the smallest number of each of the nested arrays
  min_values_array = []
  inner_array_index = 0
  while inner_array_index < src.count do
    element_index = 0
    smallest_number = 150
    while element_index < src[inner_array_index].count do
      if src[inner_array_index][element_index] < smallest_number
        smallest_number = src[inner_array_index][element_index]
      end
      element_index += 1
    end
    min_values_array << smallest_number
    inner_array_index += 1
  end
  min_values_array
end