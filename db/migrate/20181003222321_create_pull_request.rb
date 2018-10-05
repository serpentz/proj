class CreatePullRequest < ActiveRecord::Migration[5.2]
  def change
  		create_table :pull_requests do |t|
  			t.integer :assignment_id
  			t.integer :student_id
  		end
  end
end
