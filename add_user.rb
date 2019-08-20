require_relative 'assignment/assignment'

user1 = Assignment.new
user1.create_user( username: "Paul" , password_digest: "!PWD" ) 
# user1.save
puts user1
