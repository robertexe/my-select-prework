def my_select(collection)
  if block_given?
    n = 0
    output = []
    while n < collection.length do
      if yield(collection[n])
        output << collection[n]
      end
      n+=1
    end
    return output
  end
end


my_select([1, 2, 3, 4, 5]) do |num|
  if num.even? == true
    num
  end
end
