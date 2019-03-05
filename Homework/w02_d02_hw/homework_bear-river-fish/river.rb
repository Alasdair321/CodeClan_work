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
    if @fishes.include?(fish) == true
      @fishes.delete(fish)
    else
      return
    end
  end

  def exist(fish)
    if @fishes.include?(fish) == true
      return fish
    else
      return nil
    end
  end

end
