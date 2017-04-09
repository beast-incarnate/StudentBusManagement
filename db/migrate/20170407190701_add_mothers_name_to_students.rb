class AddMothersNameToStudents < ActiveRecord::Migration
  def change
    add_column :students, :mothers_name, :string
  end
end
