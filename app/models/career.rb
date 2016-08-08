class Career < ApplicationRecord
  belongs_to :faculty

  has_many :groups
  has_many :students, through: :groups
  has_many :teachers, through: :groups
end
