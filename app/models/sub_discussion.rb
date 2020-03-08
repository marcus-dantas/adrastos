class SubDiscussion < ApplicationRecord
  acts_as_votable
  belongs_to :discussion
  has_many :comments
end
