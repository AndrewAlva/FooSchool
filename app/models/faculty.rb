class Faculty < ApplicationRecord
	has_many :careers
	has_many :groups, through: :careers
	has_many :teachers, through: :groups
	has_many :students, through: :groups
end
