require 'sinatra'
require 'sinatra/contrib/all' if development?

    get '/' do
      'Hey, E29!'
    end

    get '/frank-says' do
      'Put this in your pipe & smoke it!'
    end

    get '/name/:first/:last' do
      params['first'] + ' ' + params['last']
    end

    get '/friends/hello' do
      'Hello'
    end

    get '/friends/:index' do
      friends = ["Joey", "Phoebe", "Monica", "Chandler", "Rachel", "Ross"]
      friends[params[:index].to_i]
    end
