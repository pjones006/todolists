# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
User.destroy_all 
Profile.destroy_all
TodoList.destroy_all
TodoItem.destroy_all 

user_list = [           
{ id: 1 , username: "Fiorina" , password_digest: "CF1954" },
{ id: 2 , username: "Trump" , password_digest: "DT1946" },
{ id: 3 , username: "Carson" , password_digest: "BC1951" },
{ id: 4 , username: "Clinton" , password_digest: "HC1947" }
]

profile_list = [
    { gender: "female" , birth_year: 1954 , first_name: "Carly" , last_name: "Fiorina" , user_id: 1 }, 
    { gender: "male" , birth_year: 1946 , first_name: "Donald" , last_name: "Trump" , user_id: 2 }, 
    { gender: "male" , birth_year: 1951 , first_name: "Ben" , last_name: "Carson" , user_id: 3 }, 
    { gender: "female" , birth_year: 1947 , first_name: "Hillary" , last_name: "Clinton" , user_id: 4 }
]

todo_list = [
    { id: 1 , list_name: "Carly's campaign" , list_due_date: 1.year.from_now ,  user_id: 1 },
    { id: 2 , list_name: "Donald's campaign" , list_due_date: 1.year.from_now ,  user_id: 2 },
    { id: 3 ,  list_name: "Ben's campaign" , list_due_date: 1.year.from_now, user_id: 3 },
    { id: 4 , list_name: "Hillary's campaign" , list_due_date: 1.year.from_now ,  user_id: 4 }
]

todo_items = [
    { due_date: 1.year.from_now , title: "Title 1" , description: "Desc. one" , todo_list_id: 1 },
    { due_date: 1.year.from_now , title: "Title 2" , description: "Desc. two" , todo_list_id: 1 },
    { due_date: 1.year.from_now , title: "Title 3" , description: "Desc. three" , todo_list_id: 1 },
    { due_date: 1.year.from_now , title: "Title 4" , description: "Desc. four" , todo_list_id: 1 },
    { due_date: 1.year.from_now , title: "Title 5" , description: "Desc. five" , todo_list_id: 1 },

    { due_date: 1.year.from_now , title: "Title 1" , description: "Desc. one" , todo_list_id: 2 },
    { due_date: 1.year.from_now , title: "Title 2" , description: "Desc. two" , todo_list_id: 2 },
    { due_date: 1.year.from_now , title: "Title 3" , description: "Desc. three" , todo_list_id: 2 },
    { due_date: 1.year.from_now , title: "Title 4" , description: "Desc. four" , todo_list_id: 2 },
    { due_date: 1.year.from_now , title: "Title 5" , description: "Desc. five" , todo_list_id: 2 },

    { due_date: 1.year.from_now , title: "Title 1" , description: "Desc. one" , todo_list_id: 3 },
    { due_date: 1.year.from_now , title: "Title 2" , description: "Desc. two" , todo_list_id: 3 },
    { due_date: 1.year.from_now , title: "Title 3" , description: "Desc. three" , todo_list_id: 3 },
    { due_date: 1.year.from_now , title: "Title 4" , description: "Desc. four" , todo_list_id: 3 },
    { due_date: 1.year.from_now , title: "Title 5" , description: "Desc. five" , todo_list_id: 3 },

    { due_date: 1.year.from_now , title: "Title 1" , description: "Desc. one" , todo_list_id: 4 },
    { due_date: 1.year.from_now , title: "Title 2" , description: "Desc. two" , todo_list_id: 4 },
    { due_date: 1.year.from_now , title: "Title 3" , description: "Desc. three" , todo_list_id: 4 },
    { due_date: 1.year.from_now , title: "Title 4" , description: "Desc. four" , todo_list_id: 4 },
    { due_date: 1.year.from_now , title: "Title 5" , description: "Desc. five" , todo_list_id: 4 }
]

user_list.each { |user| User.create user }
profile_list.each { |user| Profile.create user }
todo_list.each { | user|TodoList.create user }
todo_items.each { |user| TodoItem.create user }


# Porfile.create! [
# { gender: "male" , birth_year: 1954 , first_name: "Carly" , last_name: "Fiorina" , user_id: 1}
# ]