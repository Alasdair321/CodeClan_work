class Guest
  attr_reader :name, :age, :guestcash, :favsongtitle, :inebriation, :singability, :judgementfactor, :responsetosinging

  def initialize(name, age, guestcash, favsongtitle, inebriation, singability, judgementfactor)
    @name = name
    @age = age
    @guestcash = guestcash
    @favsongtitle = favsongtitle
    @inebriation = inebriation
    @singability = singability
    @responsetosinging = nil
    @judgementfactor = judgementfactor #1-10, 10 is most exaggerating
  end

  #pay money
  def pay_money(value)
    @guestcash -= value
  end

  #consume alcohol
  def consume_alcohol(drink)
    @inebriation += drink.potency
    if @inebriation < 5
      if @singability < 10
        @singability += 1
      else
        @singability = @singability
      end 
    else
      if @singability <= 0
        @singability = 0
      else
        @singability -= 2
      end
    end
  end


  #provide response to fav song
  def favsongresponse
    "MY NAME IS #{@name.upcase} AND I LOVE THIS SONG!!"
  end

  #provide response to singing

  def singingresponse(singer, song)

    case perception = (singer.singability - song.singdifficulty)*@judgementfactor
    when -100..-80
      @responsetosinging = "MY EARS!!!!! END MY LIFE TO SPARE ME THIS TORMENT!!!!"
    when -79..-30
      @responsetosinging = "Take the mic off them!"
    when -30..0
      @responsetosinging = "Well done for trying..."
    when 1..40
      @responsetosinging = "Not bad, good effort!"
    when 41..80
      @responsetosinging = "Wow! This person has talent!"
    when 81..100
      @responsetosinging = "I CAN'T STOP CRYING, THIS IS TOO GOOD!!!!!"
    end

  end



end
