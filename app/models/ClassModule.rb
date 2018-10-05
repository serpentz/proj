class ClassModule < ActiveRecord::Base
		has_many :assignment
		has_many :students, through: :assignemnt

end