class TodoList < ActiveRecord::Base
    belongs_to :user
    has_many :todo_items, dependent: :destroy
    # scope :list_due_date order(asc
    default_scope { order list_due_date: :asc }
end
