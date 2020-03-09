class Discussion < ApplicationRecord
  belongs_to :user
  belongs_to :article
  has_many :comments, through: :sub_discussions
  has_many :sub_discussions, dependent: :destroy
  validates :title, presence: true
end
