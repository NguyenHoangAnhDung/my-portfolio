class User < ApplicationRecord
  has_many :posts, dependent: :destroy
  has_one :portfolio, dependent: :destroy

  validates :email, :first_name, :last_name, presence: true
end
