class Post < ApplicationRecord
  enum status: [:draff, :publish]

  belongs_to :user

  validates :title, :content, presence: true
end
