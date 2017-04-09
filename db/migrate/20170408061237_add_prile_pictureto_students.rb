class AddPrilePicturetoStudents < ActiveRecord::Migration
  def change
  		add_column :students, :proficccdle_picture, :string
  end
end
