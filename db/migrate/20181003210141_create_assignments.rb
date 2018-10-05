class CreateAssignments < ActiveRecord::Migration[5.2]
  
  	def change
		create_table :assignments do |t|
			t.string :name
			t.integer :module_id
	end
  end
end
