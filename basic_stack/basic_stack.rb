class Stack

  attr_reader :array

  def initialize(*elements)
    @array = elements
  end

  def fake_count
    count = 0
    while @array[count] != nil
      count += 1
    end
    count
  end

  def fake_push(element)
    @array << element
  end

  def fake_pop
    @array = @array.take(fake_count-1)
  end

  def fake_peek
    @array[-1]
  end

  def fake_max
    max = 0
    index = 0
    @array.each do |i|
      if i > max
        max = i
      end
    end
    max
  end

end

stack = Stack.new(1,2,3,4)
puts stack.array[0]
puts stack.fake_count
stack.fake_push(5)
puts stack.array[4]
stack.fake_pop
puts stack.fake_count
puts stack.fake_peek
stack.fake_push(3)
puts stack.fake_max
