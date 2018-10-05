class Student < ActiveRecord::Base

	has_many :assignments
	has_many :pull_requests, through: :assignments

	def get_all_pull_requests

		all_user_pulls = PullRequest.all.select do |pull_request|
			pull_request.student_id == self.id
		end
		arr = []
		all_user_pulls.each do |ele|
			arr<<Assignment.find(ele.assignment_id)
		end
		arr
	end
end