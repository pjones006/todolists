class TodoItem < ActiveRecord::Base
  belongs_to :todo_list
  # scope :due_date asc
  default_scope { order due_date: :asc }
end
