#Create fantasy baseball team



# require gems
require 'sqlite3'
require 'faker'


db = SQLite3::Database.new("baseball.db")
db.results_as_hash = true

#create team
create_team_cmd = <<-SQL
  CREATE TABLE IF NOT EXISTS team(
    id INTEGER PRIMARY KEY,
    position_1b VARCHAR(255),
    first_baseman_id INT,
    FOREIGN KEY (first_baseman_id) REFERENCES first_basemen(id)
    position_2b VARCHAR(255),
    second_baseman_id INT,
    FOREIGN KEY (second_baseman_id) REFERENCES second_basemen(id)
    position_ss VARCHAR(255),
    shortstop_id INT,
    FOREIGN KEY (shortstop_id) REFERENCES shortstops(id)
    position_3b VARCHAR(255),
    third_baseman_id INT,
    FOREIGN KEY (third_baseman_id) REFERENCES third_basemen(id)
    position_lf VARCHAR(255),
    left_fielder_id INT,
    FOREIGN KEY (left_fielder_id) REFERENCES left_fielders(id)
    position_cf VARCHAR(255),
    center_fielder_id INT,
    FOREIGN KEY (center_fielder_id) REFERENCES center_fielders(id)
    position_rf VARCHAR(255),
    right_fielder_id INT,
    FOREIGN KEY (right_fielder_id) REFERENCES right_fielders(id)
    position_c VARCHAR(255),
    catcher_id INT,
    FOREIGN KEY (catcher_id) REFERENCES catchers(id)
    position_p VARCHAR(255),
    pitcher_id INT,
    FOREIGN KEY (pitcher_id) REFERENCES pitchers(id)
  )
SQL

create_first_basemen_cmd = <<-SQL
    CREATE TABLE IF NOT EXISTS first_basemen(
    id INTEGER PRIMARY KEY,
    name VARCHAR(255),
  )
SQL

create_second_basemen_cmd = <<-SQL
    CREATE TABLE IF NOT EXISTS second_basemen(
    id INTEGER PRIMARY KEY,
    name VARCHAR(255),
  )
SQL

create_shortstops_cmd = <<-SQL
    CREATE TABLE IF NOT EXISTS shortstops(
    id INTEGER PRIMARY KEY,
    name VARCHAR(255),
  )
SQL

create_third_basemen_cmd = <<-SQL
    CREATE TABLE IF NOT EXISTS third_basemen(
    id INTEGER PRIMARY KEY,
    name VARCHAR(255),
  )
SQL

create_left_fielders_cmd = <<-SQL
    CREATE TABLE IF NOT EXISTS left_fielders(
    id INTEGER PRIMARY KEY,
    name VARCHAR(255),
  )
SQL

create_center_fielders_cmd = <<-SQL
    CREATE TABLE IF NOT EXISTS center_fielders(
    id INTEGER PRIMARY KEY,
    name VARCHAR(255),
  )
SQL

create_right_fielders_cmd = <<-SQL
    CREATE TABLE IF NOT EXISTS right_fielders(
    id INTEGER PRIMARY KEY,
    name VARCHAR(255),
  )
SQL

create_catchers_cmd = <<-SQL
    CREATE TABLE IF NOT EXISTS catchers(
    id INTEGER PRIMARY KEY,
    name VARCHAR(255),
  )
SQL

create_pitchers_cmd = <<-SQL
    CREATE TABLE IF NOT EXISTS pitchers(
    id INTEGER PRIMARY KEY,
    name VARCHAR(255),
  )
SQL


db.execute(create_team_cmd)
db.execute(create_first_basemen_cmd)
db.execute(create_second_basemen_cmd)
db.execute(create_shortstops_cmd)
db.execute(create_third_basemen_cmd)
db.execute(create_left_fielders_cmd)
db.execute(create_center_fielders_cmd)
db.execute(create_right_fielders_cmd)
db.execute(create_catchers_cmd)
db.execute(create_pitchers_cmd)



def create_first_basemen(db, name)
	db.execute("INSERT INTO first_basemen (name) VALUES (?)", [name])
end

10.times do
  create_first_basemen(db, Faker::Name.name)
end

def create_second_basemen(db, name)
	db.execute("INSERT INTO second_basemen (name) VALUES (?)", [name])
end

10.times do
  create_second_basemen(db, Faker::Name.name)
end

def create_shortstops(db, name)
	db.execute("INSERT INTO shortstops (name) VALUES (?)", [name])
end

10.times do
  create_shortstops(db, Faker::Name.name)
end

def create_third_basemen(db, name)
	db.execute("INSERT INTO third_basemen (name) VALUES (?)", [name])
end

10.times do
  create_third_basemen(db, Faker::Name.name)
end

def create_left_fielders(db, name)
	db.execute("INSERT INTO left_fielders (name) VALUES (?)", [name])
end

10.times do
  create_left_fielders(db, Faker::Name.name)
end

def create_center_fielders(db, name)
	db.execute("INSERT INTO center_fielders (name) VALUES (?)", [name])
end

10.times do
  create_center_fielders(db, Faker::Name.name)
end

def create_right_fielders(db, name)
	db.execute("INSERT INTO right_fielders (name) VALUES (?)", [name])
end

10.times do
  create_right_fielders(db, Faker::Name.name)
end

def create_catchers(db, name)
	db.execute("INSERT INTO catchers (name) VALUES (?)", [name])
end

10.times do
  create_catchers(db, Faker::Name.name)
end

def create_pitchers(db, name)
	db.execute("INSERT INTO pitchers (name) VALUES (?)", [name])
end

10.times do
  create_pitchers(db, Faker::Name.name)
end

def create_team(db, position_1b, 1b, position_2b, 2b, position_ss, ss, position_3b, 3b, position_lf, lf, position_cf, cf, position_rf, rf, position_c, c, position_p, p)
	db.execute("INSERT INTO team (position_1b, 1b, position_2b, 2b, position_ss, ss, position_3b, 3b, position_lf, lf, 
    position_cf, cf, position_rf, rf, position_c, c, position_p, p) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)", 
    [position_1b, 1b, position_2b, 2b, position_ss, ss, position_3b, 3b, position_lf, lf, position_cf, cf, position_rf, rf, position_c, c, position_p, p])
	end

#============================================================================#

#method to create player lineup



def modify_1B(db, id, 1B)
	db.execute("UPDATE players SET 1B=? WHERE id=?", [1B, id])













def print_lineup(db)
	puts "Here is your lineup:"
	lineup = db.execute("SELECT * FROM lineup")
	lineup.each do |player|
		puts "#{player['position']}. #{player['name']}"
	end
end


#Print pitchers!!!!!

puts "Create you fantasy baseball team!"
puts ""
puts ""
def print_first_basemen (db)
	puts "Here are the first basemen to choose from:"
	first = db.execute("SELECT * FROM first_basemen")
	first.each do |player|
		puts "#{player['id']}. #{player['name']}"
	end
end

puts "Enter the number of chosen first baseman: "
    1B = gets.chomp.to_i

def print_second_basemen(db)
	puts "Here are the second basemen to choose from:"
	second = db.execute("SELECT * FROM second_basemen")
	second.each do |player|
		puts "#{player['id']}. #{player['name']}"
	end
end

puts "Enter the number of chosen second baseman: "
    2B = gets.chomp.to_i

def print_shortstops(db)
	puts "Here are the shortstops to choose from:"
	short = db.execute("SELECT * FROM shortstops")
	short.each do |player|
		puts "#{player['id']}. #{player['name']}"
	end
end

puts "Enter the number of chosen shortstop: "
    SS = gets.chomp.to_i

def print_shortstops(db)
	puts "Here are the shortstops to choose from:"
	short = db.execute("SELECT * FROM shortstops")
	short.each do |player|
		puts "#{player['id']}. #{player['name']}"
	end
end

puts "Enter the number of chosen shortstop: "
    SS = gets.chomp.to_i
    

    
    
    print "Enter the name of 2B: "
    2B = gets.chomp
    
    print "Enter the name of SS: "
    SS = gets.chomp

    print "Enter the name of 3B: "
    3B = gets.chomp

    print "Enter the name of OF_1: "
    OF_1 = gets.chomp

    print "Enter the name of OF_2: "
    OF_2 = gets.chomp

    print "Enter the name of OF_3: "
    OF_3 = gets.chomp

    print "Enter the name of C: "
    C = gets.chomp

    print "Enter the name of P (enter number from list): "
    pitcher_id = gets.chomp

    create_team(position, name)

