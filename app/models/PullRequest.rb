class PullRequest < ActiveRecord::Base

	belongs_to :assignment
	belongs_to :student

	def self.make_ranks
		students = {}
		PullRequest.all.each do |pull_request|

				stud = Student.find(pull_request.student_id)

					!students[stud.name]?students[stud.name] = 1 : students[stud.name]+=1
		end
		students
	end
end