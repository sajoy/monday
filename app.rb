require ('sinatra')
require ('sinatra/reloader')
also_reload('lib/**/*.rb')
require('./lib/parcel')

get ('/') do
  erb(:form)
end

get ('/results') do
  @length = params.fetch('length').to_f()
  @width = params.fetch('width').to_f()
  @depth = params.fetch('depth').to_f()
  @weight = params.fetch('weight').to_f()
  @parcel = Parcel.new(@length, @width, @depth, @weight)
  @cost = @parcel.cost()
  erb(:results)
end
