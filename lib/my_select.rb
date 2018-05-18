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
