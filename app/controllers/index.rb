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
  end
end

get '/' do
  erb :'index'
end
