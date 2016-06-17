# class Application < Sinatra::Base
#   use Rack::SSL

  post '/' do
    if request.secure?
      puts "secure"
    else
      puts "params coming in =========> #{params.inspect}"
      return {response: 'DATA RECIEVED AND RESPONSE SENT'}
    end
  end

# end

get '/' do
  erb :'index'
end
