# def bubblesort(array)
#   n = array.length

#   for i in 0..(n-2)
#     swapped = false
#     for j in 0..(n-i-2)
#       if array[j] > array[j + 1]
#         array[j], array[j + 1] = array[j + 1], array[j]
#         swapped = true
#       end
#     end
#     unless swapped
#       break
#     end
#   end
#   array
# end
# 
def bubble_sort(array)
  n = array.length

  (0...n - 1).each do |i|
    swapped = false

    (0...n - i - 1).each do |j|
      if array[j] > array[j + 1]
        array[j], array[j + 1] = array[j + 1], array[j]
        swapped = true
      end
    end

    break unless swapped
  end

  array
end

bubble_sort([4,3,78,2,0,2])