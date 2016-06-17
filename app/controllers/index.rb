# class Application < Sinatra::Base
#   use Rack::SSL

  post '/' do
    if request.secure?
      status 200
      return {response: 'SECURE REQUEST SENT, RECIEVED, AND REPLIED TO'}
    else
      status 200
      return {response: 'insecure request sent, received, and replied to'}
    end
  end

# end

get '/' do
  erb :'index'
end
