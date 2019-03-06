class River
  attr_reader :name, :fishes

  def initialize(name, fishes)
    @name = name
    @fishes = fishes
  end

  def fish_number
    @fishes.length
  end

  def lose_fish(fish)
    @fishes.delete(fish)
    return fish
  end


end
