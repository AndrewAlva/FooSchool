class Student < ApplicationRecord
  belongs_to :person

  has_many :schedules
  has_many :groups, through: :schedules

  has_many :teachers, through: :groups

end