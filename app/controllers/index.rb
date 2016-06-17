# class Application < Sinatra::Base
#   use Rack::SSL

  post '/' do
    if request.secure?
      status 200
      puts "secure"
    else
      status 200
      return {response: 'DATA RECIEVED AND RESPONSE SENT'}
    end
  end

# end

get '/' do
  erb :'index'
end
