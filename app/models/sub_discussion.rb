class SubDiscussion < ApplicationRecord
  belongs_to :discussion
  has_many :comments
  acts_as_votable
end
