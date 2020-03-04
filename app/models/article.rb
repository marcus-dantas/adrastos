class Article < ApplicationRecord
  belongs_to :user
  has_many :discussions, dependent: :destroy
  has_one_attached :photo
end
