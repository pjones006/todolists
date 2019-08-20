class ChangeCompletedToBeBooleanInTodoItems < ActiveRecord::Migration
  def change
     # change_column :table_name, :column_name, :new_type
    change_column :todo_items, :completed, :boolean
  end
end
