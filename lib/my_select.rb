def my_select(collection)
  if block_given?
    n = 0
    output = []
    while n < collection.length
      if yield(collection[n]) == true
        output << yield(collection[n])
        n += 1
      end
    end
  end
end
