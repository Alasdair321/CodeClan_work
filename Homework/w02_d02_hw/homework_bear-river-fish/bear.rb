class Bear
  attr_reader :type
  attr_accessor :name, :stomach

  def initialize(type, name)
    @name = name
    @type = type
    @stomach = []
  end

  def eat_fish(fish)
      @stomach << fish
      if fish == "not a fish"
        @stomach.delete("not a fish")
      end
  end

  def speak_when_eaten_fish
    @stomach.length > 0 ? "DAMNED TASTEY" : "GEEZ SOME FISH YA BAWBAG"
  end

end
