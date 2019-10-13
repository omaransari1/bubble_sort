





def bubble_sort(array)


  loop do

    swapped = false

    for x in 0...array.length - 1
      if array[x] > array[x + 1]
        array[x], array[x + 1] = array[x + 1], array[x]
        swapped = true
      end
    end

    break if swapped == false

  end

  puts array

end

bubble_sort([4,3,78,2,0,2])