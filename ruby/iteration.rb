def test_method 
  puts "Hello, nice to meet you!"
  yield("Doug", "Hank")
end

test_method { |name1, name2| puts "#{name1} and #{name2}" }



hobbies= ['tennis', 'movies', 'coding', 'cars', '6']
cars ={color:"blue", brand:"subaru", seat:6}

hobbies.each do |x|
  puts "I like #{x}"
end

cars.each do |y, z|
  puts "My car is  #{z}"
end

hobbies.map! do |hobby|
  puts hobby
  hobby.reverse
end
p hobbies


hobbies.delete_if{|hobby| hobby.to_i > 5}

p hobbies

cars.delete_if{|car_specs_key, car_specs_value|  car_specs_value.to_i > 5}

p cars



hobbies.delete_if{|hobby| (hobby.to_i > 5) == false}

p hobbies

cars.delete_if{|car_specs_key, car_specs_value|  (car_specs_value.to_i > 5) == false}

p cars



hobbies.keep_if{|hobby| hobby.to_i > 5}

p hobbies

cars.keep_if{|car_specs_key, car_specs_value|  car_specs_value.to_i > 5}

p cars



A method that will remove items from a data structure until the condition in the block evaluates to false, then stops.


until hobbies = hobbies[1]
hobbies.delete{|hobby| hobby}
end





#def condition(hash)
#  if cars[:seat] > 5
#    cars.select
#  end
#end
#p cars