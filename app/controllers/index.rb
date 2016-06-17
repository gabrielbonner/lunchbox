post '/' do
  marker = LunchboxMarker.new(name: params[:name],
                              description: params[:description],
                              tags: params[:tags],
                              latitude: params[:latitude],
                              longitude: params[:longitude])
  if marker.save
    status 200
    return marker.to_json
  else
    status 422
    return "Your marker instance could not be saved, please try again."
  end
end

get '/' do
  @all_markers = LunchboxMarker.all
  erb :'index'
end

get '/markers' do
  LunchboxMarker.all.to_json
end
