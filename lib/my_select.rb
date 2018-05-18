def my_select(collection)
  if block_given?
    n = 0
    output = []
    while n < collection.length do
      if yield(collection[n]) == true
        output << yield(collection[n])
        n += 1
      else
        return nil
      end
    end
  end
end


my_select([1,2,3,4,5,6,7,8,9,10]) do |num|
  num.even?
end
