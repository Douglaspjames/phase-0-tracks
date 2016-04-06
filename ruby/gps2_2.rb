# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps: 
  # split string into array
  # push items from array into hash
  # set default quantity to 1, (values)
  # print the list to the console with print method
# output: hash items => quantity

# Method to add an item to a list
# input: item name and optional quantity
# steps: add the item and quantity as a key => value pair in hash
# output: hash items => quantity

# Method to remove an item from the list
# input: item name
# steps: remove that key value from hash
# output: hash items => quantity

# Method to update the quantity of an item
# input: item name and quantity
# steps: look up the key for the item name, change the associated value
# output:

# Method to print a list and make it look pretty
# input: hash
# steps: print strings with interpolated #{} keys and values
# output: strings

def create_list(item_string)
  item_array = item_string.split(' ')
  item_hash = {}
  item_array.each do |item|
    item_hash[item] = 1
  end
  print_list(item_hash)
end

def item_add(list, item, quantity)
  list[item] = quantity
  list
end

def item_remove(list, item)
  list.delete(item)
  list
end

def item_update_quantity(list, item, quantity)
  list[item] = quantity
  list
end

def print_list(hash)
  puts "GROCERY LIST"
  hash.each do |item, quantity|
    puts "#{quantity} | #{item}"
  end
end



  
  
  
  
  
  
#### DRIVER CODE
  
example_string = "carrots apples cereal pizza"
example_list = create_list(example_string)

p item_add(example_list, "yams", 99)
p item_remove(example_list, "yams")
p item_update_quantity(example_list, "apples", 98)
print_list(example_list)