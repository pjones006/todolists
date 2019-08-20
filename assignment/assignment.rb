require_relative '../config/environment'

# Use Active Record Model methods to implement the following methods.
class Assignment

  #
  # Insert rows in DB
  #
  def create_user(params)
      # accept a hash of user properties (`:username` and `:password_digest`) as an input parameter. Note these are 100% same as model class.
      # use the User Model class to create a new user in the DB
      # return an instance of the class with primary key (`id`), and dates (`created_at` and `updated_at`) assigned
    @user = User.new(username: params[:username], password_digest: params[:password_digest])
    @user.save
   end

  def create_todolist(params)
      # accept a hash of todolist properties (`:name` and `:due_date`) as an input parameter. Note these are not 100% the same as Model class.
      # use the TodoList Model class to create a new user in the DB
      # return an instance of the class with primary key (`id`), and dates (`created_at` and `updated_at`) assigned
    @todolist = TodoList.new(list_name: params[:name], list_due_date: params[:due_date])
    @todolist.save
  end

  #
  # Retrieve paginated results from DB
  #
  def find_allusers(offset, limit)
      # accept offset and limit input parameters
      # use the User Model class to find all Users, ordered by `updated_at` ascending, with specified row offset and row limit
      # return a collection of User instances that represent the specified rows
      # user = User.new
      # user = User.new
      User.offset(offset).limit(limit).all.order(updated_at: :asc)
  end

  def find_alllists(offset, limit)
      # accept offset and limit input parameters
      # use the TodoList Model class to find all TodoLists, ordered by `list_due_date` descending, with specified row offset and row limit
      # return a collection of TodoList instances that represent the specified rows
      TodoList.offset(offset).limit(limit).all.order(list_due_date: :desc)
  end

  #
  # Query DB with exact match
  #
  def find_user_byname(username)
      # accept a username input parameter
      # use the User Model class to find all Users with the supplied username. 
      # NOTE:  Username is not unique in the Users table, thus you can have many users with the same username.
      # return a collection of User instances that match the provided username  
      User.where(username: username)
  end 

  def find_todolist_byname(name)
      # accept a name input parameter
      # use the TodoList Model class to find all TodoLists with the supplied list_name. 
      # NOTE: List name is not required to be unique, thus you can have many lists with the same list name.
      # return a collection of TodoList instances that match the provided name
      TodoList.where(list_name: name)
  end     

  #
  # Get rows from DB by PK
  #
  def get_user_byid(id)
      # accept an id input parameter
      # use the User Model class to get the User associated with the `id` primary key
      # return the User instance that matches the provided id
      User.find_by(id: id)
  end

  def get_todolist_byid(id)
      # accept an id input parameter
      # use the TodoList Model class to get the TodoList associated with the `id` primary key
      # return the TodoList instance that matches the provided id
      TodoList.find_by(id)
  end

  #
  # Update rows in DB
  #
  def update_password(id, password_digest)
      # accept an id and password_digest input parameters
      # use the User Model class to update the `password_digest` for the User associated with the id primary key
      # (no return is required)
    User.find_by(id: id).update(password_digest: password_digest)
  end

  def update_listname(id, name)
      # accept an id and name input parameters
      # use the TodoList Model class to update the `list_name` for the TodoList associated with id primary key 
      # (no return is required)
    TodoList.find_by(id).update(list_name: name)
  end 

  #
  # Delete rows from DB
  #
  def delete_user(id)
      # accept an id input parameter
      # use the User Model class to remove the User associated with the `id` primary key from the database
      # (no return is required)
      User.destroy(id)
  end 

  def delete_todolist(id)
      # accept an id input parameter
      # use the TodoList Model class to remove the TodoList associated with the `id` primary key.
      # (no return is required)
      TodoList.destroy(id)
  end
end

# # # rqw03.1
# user1 = Assignment.new
# user1.create_user( :username=>"PaulJones" , :password_digest=>"whocaresAnyhow" )
# p user1
# #   # rqw03.2
# todolist1 = Assignment.new
# due_date=Date.today
# todolist1.create_todolist(:name=>'mylist3', :due_date=>due_date)
# p todolist1

# # rqw04.1
# allusers = Assignment.new
# allusers.find_allusers( 1 , 1)
# p allusers
# # rqw04.2
# alllists = Assignment.new
# alllists.find_alllists( 1 , 1)
# p alllists
# # p alllists.instance_of? Array

# # rqw05.1
# singleuser = Assignment.new
# singleuser.find_user_byname("Paul")
# p singleuser

# # rqw05.2
# singlelist = Assignment.new
# singlelist.find_todolist_byname("listone")
# p singlelist

# # rqw06.1
# userid = Assignment.new
# userid.get_user_byid(1)
# p userid

# # rqw06.2
# listid = Assignment.new
# listid.get_todolist_byid(1)

# # rqw07.1 - run(see ids in output) seed-some-data after each rspec to repopulate user and todolist tables
# updpwd = Assignment.new
# updpwd.update_password(208, "updpwd")

# # rqw07.2 run(see ids in output) seed-some-data after each rspec to repopulate user and todolist tables
# updlist = Assignment.new
# updlist.update_listname(96 , "newlist")

# # rqw08.1 run(see ids in output) seed-some-data after each rspec to repopulate user and todolist tables
# deluser = Assignment.new
# deluser.delete_user(208)

# # rqw08.2 run(see ids in output) seed-some-data after each rspec to repopulate user and todolist tables
# dellist = Assignment.new
# dellist.delete_todolist(96)