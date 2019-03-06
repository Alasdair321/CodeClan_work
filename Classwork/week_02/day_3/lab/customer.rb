class Customer

  def initialize(name, wallet, age, drunkeness)
    @name = name
    @wallet = wallet
    @drinks = []
    @age = age
    @drunkeness = drunkeness
    @food_in_belly = []
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

  def eat_food(pub, food)
    @wallet -= food.price
    pub.add_money_till_food(food)
    eat_an_eats(food)
    eat = pub.take_food(food)
    @food_in_belly << eat if !eat.nil?
  end

  def drink_count
    @drinks.count
  end

  def drink_a_drink(drink)
    @drunkeness += drink.potency
  end

  def eat_an_eats(food)
    @drunkeness -= food.rejuv
  end


end
