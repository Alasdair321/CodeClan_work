variable = 7
var_vege = 'vegetable 6'

green_vegetables = {
  'vegetable 1' => 'broccoli',
  'vegetable 2' => 'cabbage',
  'vegetable 3' => 'kale',
  'vegetable 4' => 'brussels sprouts',
  'vegetable 5' => 'aspargus',
  var_vege => variable
}

favourite_vegetable = green_vegetables['vegetable 6']
second_favourite_vegetable = green_vegetables['vegetable 1']
number_of_vegetables = green_vegetables.size

puts "My favourite vegetable is: #{favourite_vegetable}"
puts "My second favourite vegetable is: " + second_favourite_vegetable
puts "#{number_of_vegetables} are listed"
