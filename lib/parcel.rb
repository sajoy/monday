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
    cost = "%.2f" % (@weight.*(".5".to_f()))
  end

end
