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

def create_team(db, position_1b, first_b, position_2b, second_b, position_ss, ss, position_3b, third_b, position_lf, lf, position_cf, cf, position_rf, rf, position_c, c, position_p, p)
	db.execute("INSERT INTO team (position_1b, first_b, position_2b, second_b, position_ss, ss, position_3b, third_b, position_lf, lf, 
    position_cf, cf, position_rf, rf, position_c, c, position_p, p) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)", 
    [position_1b, first_b, position_2b, second_b, position_ss, ss, position_3b, third_b, position_lf, lf, position_cf, cf, position_rf, rf, position_c, c, position_p, p])
	end

#============================================================================#

#method to create player lineup



#def modify_1B(db, id, 1B)
	#db.execute("UPDATE players SET 1B=? WHERE id=?", [1B, id])

















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

print_first_basemen
puts "Enter the number of chosen first baseman: "
    first_b = gets.chomp.to_i
    position_1b = "1B"


def print_second_basemen(db)
	puts "Here are the second basemen to choose from:"
	second = db.execute("SELECT * FROM second_basemen")
	second.each do |player|
		puts "#{player['id']}. #{player['name']}"
	end
end

print_second_basemen
puts "Enter the number of chosen second baseman: "
    second_b = gets.chomp.to_i
    position_2b = "2B"

def print_shortstops(db)
	puts "Here are the shortstops to choose from:"
	short = db.execute("SELECT * FROM shortstops")
	short.each do |player|
		puts "#{player['id']}. #{player['name']}"
	end
end

print_shortstops
puts "Enter the number of chosen shortstop: "
    ss = gets.chomp.to_i
    position_ss = SS

def print_third_basemen(db)
	puts "Here are the third basemen to choose from:"
	third = db.execute("SELECT * FROM third_basemen")
	third.each do |player|
		puts "#{player['id']}. #{player['name']}"
	end
end

print_third_basemen
puts "Enter the number of chosen third baseman: "
    third_b = gets.chomp.to_i
    thrd = 3B
    

def print_left_fielders(db)
	puts "Here are the left fielders to choose from:"
	left = db.execute("SELECT * FROM left_fielders")
	left.each do |player|
		puts "#{player['id']}. #{player['name']}"
	end
end

print_left_fielders
puts "Enter the number of chosen left fielder: "
    lf = gets.chomp.to_i
    position_lf = LF

def print_center_fielders(db)
	puts "Here are the center fielders to choose from:"
	center = db.execute("SELECT * FROM center_fielders")
	center.each do |player|
		puts "#{player['id']}. #{player['name']}"
	end
end

print_center_fielders
puts "Enter the number of chosen center fielder: "
    cf = gets.chomp.to_i
    position_cf = CF

def print_right_fielders(db)
	puts "Here are the right fielders to choose from:"
	right = db.execute("SELECT * FROM right_fielders")
	right.each do |player|
		puts "#{player['id']}. #{player['name']}"
	end
end

print_right_fielders
puts "Enter the number of chosen right fielder: "
    rf = gets.chomp.to_i
    position_rf = RF

def print_catchers(db)
	puts "Here are the catchers to choose from:"
	cat = db.execute("SELECT * FROM catchers")
	cat.each do |player|
		puts "#{player['id']}. #{player['name']}"
	end
end

print_catchers
puts "Enter the number of chosen catchers: "
    c = gets.chomp.to_i
    position_c = C

def print_pitchers(db)
	puts "Here are the pitchers to choose from:"
	pitch = db.execute("SELECT * FROM catchers")
	pitch.each do |player|
		puts "#{player['id']}. #{player['name']}"
	end
end

print_pitchers
puts "Enter the number of chosen pitcher: "
    p = gets.chomp.to_i
    position_p = P


create_team(db, position_1b, first_b, position_2b, second_b, position_ss, ss, thrd, third_b, position_lf, lf, position_cf, cf, position_rf, rf, position_c, c, position_p, p)

def print_team(db)
	puts "Here is your team:"
	lineup = db.execute("SELECT * FROM team")
	lineup.each do |player|
		puts "#{player['position']}. #{player['name']}"
	end
end

print_team(db)

