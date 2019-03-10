chickens  = [ "Margaret", "Hetty", "Henrietta", "Audrey", "Mabel" ]

for chicken in chickens
  p chicken
end

chickens.each do

chickens.each{|chicken| p chicken}


name_lengths = []
for chicken in chickens
  name_lengths << chicken.length
end
p name_lengths

p chickens.map {|chicken| chicken.length }

numbers = [1,2,3,4,5,6,7,8,9]
p numbers
squared_numbers = numbers.map{|number| number * number}
p squared_numbers
squared_numbers_min1 = numbers.map{|number| number * (number-1)}
p squared_numbers_min1
squared_numbers_plus1 = numbers.map{|number| number * (number+1)}
p squared_numbers_plus1

class Student
  attr_reader :name
  def initialize(name)
    @name = name
  end
end
students = [Student.new("Lisa"),
            Student.new("Gen"),
            Student.new("Jules")]

p students.map {|name| name.name}

student_names = ["Lisa","Gen", "Jules", "Jonny"]

student_names.each_with_index do |student , index|
p "#{index + 1} is #{student}"
end

p student_names.find {|student| student[0] == "J"}
p student_names.find_all {|student| student[0] == "J"}


numbers = [1,2,3,4,5,6,7,8,9]
p numbers.reduce(:+)

student_names = ["Lisa","Gen", "Jules", "Jonny"]
p student_names.reduce{|memo, name| memo += ", #{name}"}


class Student
  attr_reader :name
  def initialize(name)
    @name = name
  end
end
students = [Student.new("Lisa"),
            Student.new("Gen"),
            Student.new("Jules")]

p student_names.reduce{|memo, name| memo += ", #{name}"}
