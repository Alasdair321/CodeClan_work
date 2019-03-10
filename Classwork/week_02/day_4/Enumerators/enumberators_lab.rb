pets = [
{
    name: "Sir Percy",
    pet_type: :cat,
    breed: "British Shorthair",
    price: 500
},
{
    name: "King Bagdemagus",
    pet_type: :cat,
    breed: "British Shorthair",
    price: 500
},
{
    name: "Sir Lancelot",
    pet_type: :dog,
    breed: "Pomsky",
    price: 1000,
},
{
    name: "Arthur",
    pet_type: :dog,
    breed: "Husky",
    price: 900,
},
{
    name: "Tristan",
    pet_type: :dog,
    breed: "Basset Hound",
    price: 800,
},
{
    name: "Merlin",
    pet_type: :cat,
    breed: "Egyptian Mau",
    price: 1500,
}
]


# Print out all of the names using a loop
# for name in pets
#   p name[:name]
# end

# Print out all of the names using an enumerable
# pets.each{|name| p name[:name]}

# Find a pet using a loop and if statement
# for name in pets
#   if name[:name] == "Tristan"
#     p name[:name]
#   end
# end

# Find a pet using an enumerable
# v = pets.find {|name| name[:name] == "Tristan"}
# p v[:name]

## Task: using enumerable methods:

## 1. Find the pet which breed is Husky
p pets.find{|pet| pet[:breed] == "Husky"}

## 2. Make an array of all of the pets' names
p pets.map {|pet| pet[:name]}

## 3. Find out if there are any pets of breed 'Dalmation' (true or false)
if pets.find{|pet| pet[:breed] == "Dalmation"} != nil
 true
else
 false
end

boolean = pets.any?{|pet| pet[:breed] == "Dalmation"}
p boolean

## 4. Find the most expensive pet i.e. pet with the highest/maximum price
array_prices = pets.map{|pet| pet[:price]}
index_max_price = array_prices.index(array_prices.max)
p pets[index_max_price][:name]

## 5. Find the total value (price) of all of the pets added together.
array_prices = pets.map{|pet| pet[:price]}
total_price = array_prices.reduce(:+)
p total_price

tp = pets
  .map{|pet| pet[:price]}
  .reduce(:+)
p tp

## 6. Change each pet so their price is 50% cheaper
array_prices_start = pets.map{|pet| pet[:price]}
pets.each{|pet| pet[:price] /= 2}
array_prices_end = pets.map{|pet| pet[:price]}
p array_prices_start
p array_prices_end
