require './environment'

module FormsLab
  class App < Sinatra::Base
    attr_accessor :pirate

  set :root, "#{settings.root}/."

  get "/" do
    erb :"pirates/index"
  end

  get "/new" do
    erb :"pirates/new"
  end

  post "/pirates" do
    @pirate = Pirate.new(params)

    erb :"pirates/show"
  end



  end
end
