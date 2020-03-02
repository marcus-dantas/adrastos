class Discussion < ApplicationRecord
  belongs_to :user
  belongs_to :article
  has_many :comments, dependent: :destroy
end
