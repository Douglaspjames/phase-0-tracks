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
    first_baseman_id INT,
    FOREIGN KEY (first_baseman_id) REFERENCES first_basemen(id)
    second_baseman_id INT,
    FOREIGN KEY (second_baseman_id) REFERENCES second_basemen(id)
    shortstop_id INT,
    FOREIGN KEY (shortstop_id) REFERENCES shortstops(id)
    third_baseman_id INT,
    FOREIGN KEY (third_baseman_id) REFERENCES third_basemen(id)
    left_fielder_id INT,
    FOREIGN KEY (left_fielder_id) REFERENCES left_fielders(id)
    center_fielder_id INT,
    FOREIGN KEY (center_fielder_id) REFERENCES center_fielders(id)
    right_fielder_id INT,
    FOREIGN KEY (right_fielder_id) REFERENCES right_fielders(id)
    catcher_id INT,
    FOREIGN KEY (catcher_id) REFERENCES catchers(id)
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

def create_team(db, 1b, 2b, ss, 3b, lf, cf, rf, c, p)
	db.execute("INSERT INTO team (position, name) VALUES (?, ?)", [position, name])
	end

#============================================================================#

#method to create player lineup



def add_1B(db, id, 1B)
	db.execute("UPDATE players SET 1B=? WHERE id=?", [1B, id])













def print_lineup(db)
	puts "Here is your lineup:"
	lineup = db.execute("SELECT * FROM lineup")
	lineup.each do |player|
		puts "#{player['position']}. #{player['name']}"
	end
end


#Print pitchers!!!!!


    print "Enter the name of 1B: "
    1B = gets.chomp
    add_player(1B)
    
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

    create_lineup(position, name)

