class Customer

  def initialize(name, wallet, age, drunkeness)
    @name = name
    @wallet = wallet
    @drinks = []
    @age = age
    @drunkeness = drunkeness
  end

  def has_name
    @name
  end

  def has_wallet
    @wallet
  end

  def age
    @age
  end

  def drunkeness
    @drunkeness
  end

  def can_take_drink(pub, which_drink)
    if pub.age_check(@age) == true && @drunkeness <= 10
      @wallet -= which_drink.price
      pub.add_money_till(which_drink)
      drink_a_drink(which_drink)
      drink = pub.take_drink(which_drink, @age)
      @drinks << drink if !drink.nil?
    else
      return
    end
  end

  def drink_count
    @drinks.count
  end

  def drink_a_drink(drink)
    @drunkeness += drink.potency
  end



end
