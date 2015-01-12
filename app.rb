require ('sinatra')
require ('sinatra/reloader')
also_reload('lib/**/*.rb')
require('./lib/parcel')

get('/') do
  @title = "Home"
  erb(:home)
end

get ('/parcel_form') do
  @title = "Parcel Cost Calculator"
  erb(:form)
end

get ('/results') do
  @length = params.fetch('length').to_f()
  @width = params.fetch('width').to_f()
  @depth = params.fetch('depth').to_f()
  @weight = params.fetch('weight').to_f()
  @parcel = Parcel.new(@length, @width, @depth, @weight)
  @cost = @parcel.cost()
  @title = "Parcel Cost Calculator"
  if @length.==(0).|(@width.==(0)).|(@depth.==(0)).|(@weight.==(0))
    redirect "/parcel_form?@redirect=true"
  end
  erb(:results)
end

get ('/triangle_form') do
  @title = "Triangle Type"
  erb(:form_triangle)
end

get ('/results_triangle') do
  @side1 = params.fetch('side1').to_f()
  @side2 = params.fetch('side2').to_f()
  @side3 = params.fetch('side3').to_f()
  @triangle_a = Triangle.new(@side1, @side2, @side3)
  @triangle = @triangle_a.type()
  @title = "Triangle Type"
  erb(:results_triangle)
end
