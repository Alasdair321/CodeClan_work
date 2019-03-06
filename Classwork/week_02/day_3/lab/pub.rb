class Pub

  def initialize(till, name)
    @till = till
    @name = name
    @drinks = []
  end

  def has_name
    return @name
  end

  def has_till
    return @till
  end

  def has_drinks
    return @drinks
  end

  def add_drinks_to_stock(drinks_array)
    @drinks = drinks_array
  end

  def take_drink(drink, age)
    if age_check(age) == true
      drink_to_be_sold = @drinks.find(drink)
      @drinks.delete(drink)
      return drink_to_be_sold
    end
  end

    def number_of_drinks
      @drinks.count
    end

    def add_money_till(drink)
      @till += drink.price
    end

    def age_check(age)
      if age >= 18
        true
      else
        false
      end
    end

end
