post '/' do
  marker = LunchboxMarker.new(name: params[:name],
                              description: params[:description],
                              tags: params[:tags],
                              latitude: params[:latitude],
                              longitude: params[:longitude])
  if marker.save
    status 200
    # return marker.to_json
    return "Success!"
  else
    status 422
    return "Fail!"
  end
end

get '/' do
  @all_markers = LunchboxMarker.all
  erb :'index'
end
