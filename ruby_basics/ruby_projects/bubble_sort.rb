# Bubble Sorting
# 1. Take in an array
# 2. Start with first value
# 3. Compare to value to the right
# 4. if > value to right, swap positions
# 5. move to next value in array, repeat 3 & 4 until you reach the end of the array
# 6. pop the value off, shift it into an empty array
# 7. repeat until length of original array = 0
#

def bubble_sort(array)
  sorted_array = []
  while array.length > 0
    array.each_with_index do |item, index|
      next unless index + 1 < array.length

      array[index], array[index + 1] = array[index + 1], array[index] if item > array[index + 1]
    end
    item_to_add = array.pop
    sorted_array.unshift(item_to_add)

  end
  sorted_array
end

array_to_sort = [5, 2, 7, 6, 1, 9, 3, 4, 8]

p bubble_sort(array_to_sort)
