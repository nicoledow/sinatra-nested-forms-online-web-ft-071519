require './environment'

module FormsLab
  class App < Sinatra::Base
    

    get '/' do
      erb :root 
   end
   
   get '/new' do 
     erb :new  
   end
   
   post '/pirates' do
     #binding.pry
     @new_pirate = Pirate.new(params["pirate"]["name"], params["pirate"]["weight"], params["pirate"]["height"])
     @ships_array = params["pirate"]["ships"]
     erb :show
  end

  end
end
