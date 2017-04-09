class AddPresenttoStudents < ActiveRecord::Migration
  def change
  add_column :students, :present, :integer
  end
end
