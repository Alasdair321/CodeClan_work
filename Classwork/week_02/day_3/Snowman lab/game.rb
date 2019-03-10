class Game

  attr_reader :mysteryword, :player_name, :player_lives

  def initialize(player_lives, player_name, mysteryword)
    @mysteryword = mysteryword
    @player_lives = player_lives
    @player_name = player_name
  end

  def has_mysteryword
    return ture if @mysterword.class == String
  end
end
