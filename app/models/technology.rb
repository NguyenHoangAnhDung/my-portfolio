class Technology < ApplicationRecord
  has_many :skills

  validates :name, presence: true
end
