class Teacher < ApplicationRecord
	# has_many :careers
	has_many :groups
	has_one :person

	has_many :students, through: :groups
end
