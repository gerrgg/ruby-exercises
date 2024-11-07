def bubble_sort(array)
  array.each do |number_2|
    array.each_with_index do |number, index|
      if !array[index + 1].nil? && number > array[index + 1]
        tmp = array[index + 1]
        array[index] = tmp
        array[index + 1] = number
      end
    end
  end
end

bubble_sort([4,3,78,2,0,2])