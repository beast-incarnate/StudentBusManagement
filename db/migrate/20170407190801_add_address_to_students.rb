class AddAddressToStudents < ActiveRecord::Migration
  def change
    add_column :students, :address, :text
  end
end
