class User < ActiveRecord::Base
    
    has_one :profile , dependent: :destroy
    has_many :todo_lists , dependent: :delete_all ,  dependent: :destroy
    has_many :todo_items , through: :todo_lists , source: :todo_items , dependent: :destroy

    validates :username , presence: true
# 
# User.all.each { {u} puts u.todo_items.completed }
    def get_completed_count
       todo_items.where(completed: true).count
     end
end
