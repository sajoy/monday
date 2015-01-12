class MyHash
  define_method(:initialize) do |key, value|
    @key = key
    @value = value
    @wrapper_array = [[key,value]]
  end

  define_method(:store) do |key, value|
    @wrapper_array.push([key,value])
  end

  define_method(:fetch) do |key|
    @wrapper_array.at(0).at(1)
  end
end
