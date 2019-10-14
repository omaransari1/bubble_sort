





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


def bubble_sort_by(array)

  loop do

    swapped = false

    for x in 0...array.length - 1
      diff = yield(array[x], array[x + 1])
      if diff > 0
        array[x], array[x + 1] = array[x + 1], array[x]
        swapped = true
      end
    end

    break if swapped == false

  end

  puts array
end


bubble_sort_by(["hi","hello", "heeeeello","hey","hi", "howdy"]) do |left,right|
    left.length - right.length
   end
