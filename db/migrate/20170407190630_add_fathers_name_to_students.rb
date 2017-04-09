class AddFathersNameToStudents < ActiveRecord::Migration
  def change
    add_column :students, :fathers_name, :string
  end
end
