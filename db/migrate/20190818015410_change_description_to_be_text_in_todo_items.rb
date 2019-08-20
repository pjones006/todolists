class ChangeDescriptionToBeTextInTodoItems < ActiveRecord::Migration
  def change
     # change_column :table_name, :column_name, :new_type
    change_column :todo_items, :description, :text
  end
end
