class SportTeam
  attr_accessor :coach
  attr_reader :team_name, :players

  def initialize(team_name,players,coach)
    @team_name = team_name
    @players = players
    @coach = coach
    @points = 0
  end

  def add_player(new_player)
    @players.push(new_player)
  end

  def player_included(player)
    @players.include?(player)
  end

  def team_outcome(outcome)
    @points += 1 if outcome == "win"
    return @points
  end

end
