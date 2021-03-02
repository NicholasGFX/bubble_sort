# frozen_string_literal: true

def bubble_sort(array)
  sorted = false
  until sorted
    skip_next_iteration = false
    skip_occured = false
    array.map.with_index do |_number, index|
      next if skip_next_iteration

      skip_next_iteration = false
      left = array[index]
      right = array[index + 1]
      if !right.nil? && left > right
        array[index] = right
        array[index + 1] = left
        skip_next_iteration = true
        skip_occured = true
      end
    end
    sorted = true unless skip_occured
  end
  array
end

p bubble_sort([4, 3, 78, 2, 0, 2])
#=> [0, 2, 2, 3, 4, 78]
