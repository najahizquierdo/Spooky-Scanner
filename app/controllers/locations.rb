get '/locations' do
  @locations = Location.all
  erb :'/locations/index'
end

get '/locations/:id' do
  @location = Location.find(params[:id])
  erb :'/locations/show'
end
