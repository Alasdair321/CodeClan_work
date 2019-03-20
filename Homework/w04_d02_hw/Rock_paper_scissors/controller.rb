require('sinatra')
require('sinatra/contrib/all')
require_relative('./models/checker')
also_reload('./models/*')

get '/:player1/:player2' do
  @p1_choice = params[:player1]
  @p2_choice = params[:player2]
  game = Checker.new(@p1_choice, @p2_choice)
  @winner = game.winner
  @winning_choice = game.check
  erb(:result)
end

get '/' do
  erb(:home)
end

get '/about_the_game' do
  erb(:about_the_game)
end
