class Assignment < ActiveRecord::Base
	has_many :students
	has_many :pull_requests, through: :students

end