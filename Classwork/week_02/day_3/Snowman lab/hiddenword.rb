class Hiddenword

  attr_reader :mysteryword

  def initialize()
    @all_words = @all_words = ["actor", "memory", "immense", "spoon", "furry", "whip", "aftermath", "number", "bounce", "unkempt", "flesh", "matter"]
    @mysteryword = @all_words.sample
  end

  def has_hidden_word
    return @all_words.include?(@mysteryword)
  end

  def letter_in_word_guess(guessed_letter)
    @mysteryword.each_char.any?{|char| char == guessed_letter}
  end

end
