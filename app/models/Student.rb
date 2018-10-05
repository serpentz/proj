class Student < ActiveRecord::Base

	has_many :assignments
	has_many :pull_requests, through: :assignments

end