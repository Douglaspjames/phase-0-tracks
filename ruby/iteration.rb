def test_method 
  puts "Hello, nice to meet you!"
  yield("Doug", "Hank")
end

test_method { |name1, name2| puts "#{name1} and #{name2}" }



hobbies= ['tennis', 'movies', 'coding', 'cars']
cars ={color:"blue", brand:"subaru", seat:5}

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

#cars.delete_if{|car| car.to_i > 5}

def condition(hash)
  if cars[:seat] > 5
    cars.select
  end
end
p cars