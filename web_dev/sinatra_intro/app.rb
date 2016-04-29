# require gems
require 'sinatra'
require 'sqlite3'

db = SQLite3::Database.new("students.db")
db.results_as_hash = true

# write a basic GET route
# add a query parameter
# GET /
#get '/' do
  #{}"#{params[:name]} is #{params[:age]} years old."
#end

# write a GET route with
# route parameters
get '/about/:person' do
  person = params[:person]
  "#{person} is a programmer, and #{person} is learning Sinatra."
end

get '/:person_1/loves/:person_2' do
  "#{params[:person_1]} loves #{params[:person_2]}"
end

# write a GET route that retrieves
# all student data
get '/students' do
  students = db.execute("SELECT * FROM students")
  response = ""
  students.each do |student|
    response << "ID: #{student['id']}<br>"
    response << "Name: #{student['name']}<br>"
    response << "Age: #{student['age']}<br>"
    response << "Campus: #{student['campus']}<br><br>"
  end
  response
end

get '/contact' do
  address = "215 n. Oketo, Chicago, Il"
  address
end

get '/' do
  name = params[:name]
  if name
    "Great job, #{name}!"
  else
    "Great job!"
  end
  end

  get '/:num1/plus/:num2' do
    num1 = params[:num1]
    num2 = params[:num2]
    result = (num1.to_i + num2.to_i)
    result = result.to_s
    "#{params[:num1]} plus #{params[:num2]} = #{result}"
  end
# write a GET route that retrieves
# a particular student

get '/students/:id' do
  student = db.execute("SELECT * FROM students WHERE id=?", [params[:id]])[0]
  student.to_s
end

get '/location/:campus' do
  puts "Enter campus: (SD, SF, NYC, CHI, SEA)"
  location = gets.chomp
  student = db.execute("SELECT * FROM students WHERE campus=?", [params[:campus]])
  student.to_s
end