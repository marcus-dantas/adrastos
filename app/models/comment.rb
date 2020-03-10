class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :sub_discussion
  acts_as_votable
  has_rich_text :comment_text
end
