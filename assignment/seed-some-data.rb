require_relative '../config/environment'

# Use Active Record Model methods to implement the following methods.
class Assignment2

  #
  # Insert rows in DB
  #
  def create_user(params)
      # accept a hash of user properties (`:username` and `:password_digest`) as an input parameter. Note these are 100% same as model class.
      # use the User Model class to create a new user in the DB
      # return an instance of the class with primary key (`id`), and dates (`created_at` and `updated_at`) assigned
    @user = User.new(params)
    @user.save
   end

  def create_todolist(params)
      # accept a hash of todolist properties (`:name` and `:due_date`) as an input parameter. Note these are not 100% the same as Model class.
      # use the TodoList Model class to create a new user in the DB
      # return an instance of the class with primary key (`id`), and dates (`created_at` and `updated_at`) assigned
    @todolist = TodoList.new(params)
    @todolist.save
  end
end


# rqw03.1
user1 = Assignment2.new
user1.create_user( username: "Paul" , password_digest: "whocares" )
p user1
  # rqw03.2
todolist1 = Assignment2.new
todolist1.create_todolist( list_name: "listone" , list_due_date: "2019-08-19")
p todolist1

# rqw04.1