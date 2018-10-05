class CreateStudentTable < ActiveRecord::Migration[5.2]
  def change
  	create_table :students do |t|
			t.string :name
			t.integer :module_id
		end
  end
end
