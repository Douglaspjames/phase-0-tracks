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
    position VARCHAR(255),
    name VARCHAR(255),
    bench_id INT,
    FOREIGN KEY (bench_id) REFERENCES bench_players(id)
  )
SQL

create_players_cmd = <<-SQL
    CREATE TABLE IF NOT EXISTS bench_players(
    id INTEGER PRIMARY KEY,
    name VARCHAR(255)
  )
SQL

# create lineup and pitchers tables (if it's not there already)
db.execute(create_lineup_cmd)
db.execute(create_pitchers_cmd)


def create_players(db, position, name)
	position = ["1B", "2B", "SS", ]
  db.execute("INSERT INTO bench_players (name) VALUES (?)", [name])
end

18.times do
  create_players(db, Faker::Name.name)
end

#============================================================================#

#method to create player lineup

def create_lineup(db, name)
	db.execute("INSERT INTO players (position, name) VALUES (?, ?)", [position, name])
	end

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

