class Article < ApplicationRecord
  belongs_to :user
  acts_as_votable
  has_many :discussions, dependent: :destroy
  has_one_attached :photo
  has_rich_text :body
end
