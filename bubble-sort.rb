def bubble_sort(array)
  (array.length - 1).times do |pass|
    swapped = false
    (0...array.length - 1 - pass).each do |index|
      if array[index] > array[index + 1]
        array[index], array[index + 1] = array[index + 1], array[index]
        swapped = true
      end
    end
    break unless swapped
  end
  array
end

p bubble_sort([4, 3, 78, 2, 0, 2])
# => [0, 2, 2, 3, 4, 78]
