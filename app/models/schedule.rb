class Schedule < ApplicationRecord
  belongs_to :student
  belongs_to :group

  validates_uniqueness_of :student, :scope => :group
end