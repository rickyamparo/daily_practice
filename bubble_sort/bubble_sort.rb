class BubbleSort

  def sort (array)
    i = 1
    while i < array.length
      previous = array[i-1]
      current = array[i]
      if current < previous
        array[i] = previous
        array[i-1] = current
        i = 0
      end
      i += 1
    end
    puts array
  end

end


bubble = BubbleSort.new
bubble.sort([4,3,5,0,1])
