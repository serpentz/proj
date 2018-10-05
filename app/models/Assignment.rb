class Assignment < ActiveRecord::Base

	belongs_to :class_modules
	has_many :students
	has_many :pull_requests, through: :students

end