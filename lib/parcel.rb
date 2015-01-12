class Parcel
  define_method(:initialize) do |width, length, depth, weight|
    @width = width
    @length = length
    @depth = depth
    @weight = weight
  end

  define_method(:volume) do
    volume = @width.*(@length.*(@depth))
  end

  define_method(:cost) do
    rate_of_change = (".5".to_f())
    cost = 0
    (@weight.to_i()).times() do
      cost = cost.+(rate_of_change)
      rate_of_change = rate_of_change.-(".01".to_f())
    end
    cost = "%.2f" % cost

  end

end
