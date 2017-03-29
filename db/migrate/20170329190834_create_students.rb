class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|
      t.text :name
      t.text :studentId
      t.text :stoppage
      t.text :contact
      t.boolean :fees

      t.timestamps null: false
    end
  end
end
