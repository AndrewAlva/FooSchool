class Group < ApplicationRecord
	belongs_to :career

	has_many :schedules
  	has_many :students, through: :schedules

	# has_many :students, :dependent => :destroy
	belongs_to :teacher
end