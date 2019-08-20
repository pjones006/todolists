class ChangeBirthYearToIntegerInProfile < ActiveRecord::Migration
  def change
    # change_column :table_name, :column_name, :new_type
    change_column :profiles, :birth_year, :integer
  end
end
