class PullRequest < ActiveRecord::Base

	belongs_to :assignment
	belongs_to :student

	def self.make_ranks
		students = {}
		PullRequest.all.each do |pull_request|

					!students[pull_request.student_id]?students[pull_request.student_id] = 1 : students[pull_request.student_id]+=1
		end
		students
	end

end