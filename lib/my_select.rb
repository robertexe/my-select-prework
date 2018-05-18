def my_select(collection)
  if block_given?
    n = 0
    output = []
    while n < collection.length do
      output << yield(collection[n])
      n += 1
    end
    return output
  end
end


my_select([1, 2, 3, 4, 5]) do |num|
  if num%2 == 0
    num
  end
end
