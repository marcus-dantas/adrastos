class SubDiscussion < ApplicationRecord
  belongs_to :discussion
  has_many :comments
end
