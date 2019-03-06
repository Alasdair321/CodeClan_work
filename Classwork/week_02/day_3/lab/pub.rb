class Pub

  def initialize(till, name)
    @till = till
    @name = name
    @drinks = []
    @foods = []
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

  def food
    return @foods
  end

  def add_drinks_to_stock(drinks_array)
    @drinks = drinks_array
  end

  def add_food_to_stock(food_array)
    @foods = food_array
  end

  def take_drink(drink, age)
    if age_check(age) == true
      drink_to_be_sold = @drinks.find(drink)
      @drinks.delete(drink)
      return drink_to_be_sold
    end
  end

  def take_food(food)
      food_to_be_sold = @foods.find(food)
      @foods.delete(food)
      return food_to_be_sold
  end

    def number_of_drinks
      @drinks.count
    end

    def number_of_food
      @foods.count
    end

    def add_money_till(drink)
      @till += drink.price
    end

    def add_money_till_food(food)
      @till += food.price
    end

    def age_check(age)
      if age >= 18
        true
      else
        false
      end
    end

end
